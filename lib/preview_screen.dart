import 'dart:typed_data';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as img;
import 'package:onnxruntime/onnxruntime.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({
    super.key,
    required this.imageBytes,
    required this.title,
    required this.modelName,
    required this.labels,
  });

  final Uint8List imageBytes;
  final String title;
  final String modelName;
  final List<String> labels;

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  String? _result;
  double? _confidence;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _runInference();
  }

  List<double> _softmax(List<double> logits) {
    final maxLogit = logits.reduce((a, b) => a > b ? a : b);
    final exps = logits.map((logit) => exp(logit - maxLogit)).toList();
    final sumExps = exps.reduce((a, b) => a + b);
    return exps.map((exp) => exp / sumExps).toList();
  }

  Future<void> _runInference() async {
    try {
      // Load the model from assets
      final rawAssetFile = await rootBundle.load('assets/${widget.modelName}');
      final bytes = rawAssetFile.buffer.asUint8List();

      // Create session
      final sessionOptions = OrtSessionOptions();
      final session = OrtSession.fromBuffer(bytes, sessionOptions);

      // Preprocess the image
      final image = img.decodeImage(widget.imageBytes)!;
      final resizedImage = img.copyResize(image, width: 224, height: 224);

      final imageBytes = resizedImage.getBytes(order: img.ChannelOrder.rgb);
      final float32List = Float32List(1 * 3 * 224 * 224);

      for (int y = 0; y < 224; y++) {
        for (int x = 0; x < 224; x++) {
          final pixelIndex = y * 224 + x;
          final r = imageBytes[pixelIndex * 3] / 255.0;
          final g = imageBytes[pixelIndex * 3 + 1] / 255.0;
          final b = imageBytes[pixelIndex * 3 + 2] / 255.0;

          float32List[y * 224 + x] = r;
          float32List[224 * 224 + y * 224 + x] = g;
          float32List[2 * 224 * 224 + y * 224 + x] = b;
        }
      }

      final shape = [1, 3, 224, 224];
      final inputTensor = OrtValueTensor.createTensorWithDataList(
        float32List,
        shape,
      );

      final inputName = session.inputNames[0];

      // Run inference
      final runOptions = OrtRunOptions();
      final inputs = {inputName: inputTensor};
      final outputs = session.run(runOptions, inputs);

      // Process output
      if (outputs.isNotEmpty && outputs[0] != null) {
        final logits = (outputs[0]!.value as List<List<double>>)[0];
        final probabilities = _softmax(logits);

        double maxProbability = 0;
        int maxIndex = 0;
        for (int i = 0; i < probabilities.length; i++) {
          if (probabilities[i] > maxProbability) {
            maxProbability = probabilities[i];
            maxIndex = i;
          }
        }

        setState(() {
          _result = widget.labels[maxIndex];
          _confidence = maxProbability;
          _loading = false;
        });
      } else {
        setState(() {
          _result = 'Error';
          _confidence = 0.0;
          _loading = false;
        });
      }

      // Release resources
      inputTensor.release();
      session.release();
      sessionOptions.release();
      runOptions.release();
      for (var o in outputs) {
        o?.release();
      }
    } catch (e) {
      print("Error running inference: $e");
      setState(() {
        _result = 'Error';
        _confidence = 0.0;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeader(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      color: const Color(0xFFF5F7F6),
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.memory(
                          widget.imageBytes,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  if (_loading)
                    const Center(child: CircularProgressIndicator())
                  else if (_result != null && _confidence != null)
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F7F6),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Result:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _result!,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF39794F),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Confidence Score:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${(_confidence! * 100).toStringAsFixed(2)}%',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 60, bottom: 25, left: 20, right: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF487530), Color(0xFF39794F)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Image(image: AssetImage('assets/logo.png'), height: 80),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'AnarRakshak',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFa5d6a7),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Your Pomegranate Farm Guard',
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
