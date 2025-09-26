import 'dart:typed_data';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:onnxruntime/onnxruntime.dart';

Future<Map<String, dynamic>> runInference(
  Float32List preprocessedImage,
  String modelName,
  List<String> labels,
) async {
  // Load the model from assets
  final rawAssetFile = await rootBundle.load('assets/$modelName');
  final bytes = rawAssetFile.buffer.asUint8List();

  // Create session
  final sessionOptions = OrtSessionOptions();
  final session = OrtSession.fromBuffer(bytes, sessionOptions);

  final shape = [1, 3, 224, 224];
  final inputTensor = OrtValueTensor.createTensorWithDataList(
    preprocessedImage,
    shape,
  );

  final inputName = session.inputNames[0];

  // Run inference
  final runOptions = OrtRunOptions();
  final inputs = {inputName: inputTensor};
  final outputs = session.run(runOptions, inputs);

  String result;
  double confidence;

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
    result = labels[maxIndex];
    confidence = maxProbability;
  } else {
    result = 'Error';
    confidence = 0.0;
  }

  // Release resources
  inputTensor.release();
  session.release();
  sessionOptions.release();
  runOptions.release();
  for (var o in outputs) {
    o?.release();
  }

  return {'result': result, 'confidence': confidence};
}

List<double> _softmax(List<double> logits) {
  final maxLogit = logits.reduce((a, b) => a > b ? a : b);
  final exps = logits.map((logit) => exp(logit - maxLogit)).toList();
  final sumExps = exps.reduce((a, b) => a + b);
  return exps.map((exp) => exp / sumExps).toList();
}
