import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../app_localizations.dart';

typedef ImagePickedCallback = Future<void> Function(ImageSource source);

Future<void> showImageSourceDialog({
  required BuildContext context,
  required ImagePickedCallback onPick,
  required String categoryTitle,
}) async {
  final Color primary = const Color(0xFF39794F);
  final localizations = AppLocalizations.of(context);
  final Color secondary = const Color(0xFF3FA67A);

  return showDialog<void>(
    context: context,
    builder: (ctx) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Gradient header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [secondary, primary],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  const Icon(Icons.photo_camera_back_rounded, color: Colors.white),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      localizations.getString('selectImageSource')!,
                      style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min, //TODO: Translate these
                children: [
                  const Text(
                    'Instructions',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '• Ensure the photo is clear and well-lit, preferably using natural daylight.\n'
                    '• Place the fruit or leaf in the center and focus on a single subject.\n'
                    '• Hold the camera steady and keep proper distance to avoid blur.\n'
                    '• After selecting or taking a photo, review the image before proceeding.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(height: 1.35),
                  ),
                ],
              ),
            ),

            // Big buttons
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      foregroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(52),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () async {
                      Navigator.of(ctx).pop();
                      await onPick(ImageSource.camera);
                    },
                    icon: const Icon(Icons.photo_camera_rounded),
                    label: Text(localizations.getString('camera')!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 12),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: primary, width: 1.5),
                      foregroundColor: primary,
                      minimumSize: const Size.fromHeight(52),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () async {
                      Navigator.of(ctx).pop();
                      await onPick(ImageSource.gallery);
                    },
                    icon: const Icon(Icons.photo_library_rounded),
                    label: Text(localizations.getString('gallery')!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
