import 'dart:typed_data';
import 'package:image/image.dart' as img;

Future<Float32List> preprocessImage(Uint8List imageBytes) async {
  // Decode, resize and normalize the image
  final image = img.decodeImage(imageBytes)!;
  final resizedImage = img.copyResize(image, width: 224, height: 224);

  final imageBytesAsFloat = resizedImage.getBytes(order: img.ChannelOrder.rgb);
  final float32List = Float32List(1 * 3 * 224 * 224);

  for (int y = 0; y < 224; y++) {
    for (int x = 0; x < 224; x++) {
      final pixelIndex = y * 224 + x;
      final r = imageBytesAsFloat[pixelIndex * 3] / 255.0;
      final g = imageBytesAsFloat[pixelIndex * 3 + 1] / 255.0;
      final b = imageBytesAsFloat[pixelIndex * 3 + 2] / 255.0;

      float32List[y * 224 + x] = r;
      float32List[224 * 224 + y * 224 + x] = g;
      float32List[2 * 224 * 224 + y * 224 + x] = b;
    }
  }

  return float32List;
}
