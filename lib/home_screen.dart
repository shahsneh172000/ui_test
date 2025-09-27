import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Make sure flutter_svg is in pubspec.yaml
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'preview_screen.dart';
import 'widgets/image_source_dialog.dart';
import 'app_localizations.dart';
import 'home_popup.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context, localizations),
            _buildSectionTitle(localizations.diseases),
            _buildCategoryButton(
              context,
              'assets/icons/fruit.svg', // Replace with your actual SVG file path
              localizations.getString('fruit')!,
              localizations.getString('fruit_subtitle')!,
            ),
            _buildCategoryButton(
              context,
              'assets/icons/leaf.svg', // Replace with your actual SVG file path
              localizations.getString('leaf')!,
              localizations.getString('leaf_subtitle')!,
            ),
            _buildCategoryButton(
              context,
              'assets/icons/root.svg', // Corrected to existing asset file
              localizations.getString('root')!,
              localizations.getString('root_subtitle')!,
            ),
            const SizedBox(height: 10),
            _buildSectionTitle(localizations.insectsAndPests),
            _buildCategoryButton(
              context,
              'assets/icons/insects.svg', // Replace with your actual SVG file path
              localizations.getString('insects_title')!,
              localizations.getString('insects_subtitle')!,
            ),
            _buildCategoryButton(
              context,
              'assets/icons/mix.svg', // Use existing mixed/flowers-like icon
              localizations.getString('flowers_title')!,
              localizations.getString('flowers_subtitle')!,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showLanguageSelection(context),
        backgroundColor: const Color(0xFF487530),
        child: const Icon(Icons.language, color: Colors.white),
      ),
    );
  }

  // Header Widget
  Widget _buildHeader(BuildContext context, AppLocalizations localizations) {
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
        children: [
          Image.asset('assets/logo.png', height: 80),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  localizations.appTitle,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFa5d6a7),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  localizations.appTagline,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 25, bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  // Category Button Widget using SVGs
  Widget _buildCategoryButton(
    BuildContext context,
    String svgAssetPath,
    String title,
    String subtitle,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () async {
            final localizations = AppLocalizations.of(context);
            if (title == localizations.getString('fruit') ||
                title == localizations.getString('leaf')) {
              await showImageSourceDialog(
                context: context,
                categoryTitle: title,
                onPick: (source) => _pickImageAndGo(context, source, title),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(localizations.getString('featureComingSoon')!),
                ),
              );
            }
          },
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  svgAssetPath,
                  height: 65,
                  width: 65,
                  colorFilter: const ColorFilter.mode(
                    Color(0xFF39794F),
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[850],
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey[400],
                  size: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _pickImageAndGo(
  BuildContext context,
  ImageSource source,
  String categoryTitle,
) async {
  try {
    final ImagePicker picker = ImagePicker();
    final XFile? picked = await picker.pickImage(
      source: source,
      imageQuality: 95,
    );
    if (picked == null) {
      return;
    }
    if (!context.mounted) return;

    final croppedFile = await ImageCropper().cropImage(
      sourcePath: picked.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Image',
          toolbarColor: const Color(0xFF487530),
          toolbarWidgetColor: Colors.white,
          initAspectRatio: CropAspectRatioPreset.original,
          lockAspectRatio: false,
        ),
        IOSUiSettings(title: 'Crop Image'),
      ],
    );

    if (croppedFile == null) {
      return;
    }

    final bytes = await croppedFile.readAsBytes();

    if (!context.mounted) return;

    String modelName;
    List<String> labels;

    final localizations = AppLocalizations.of(context);
    if (categoryTitle == localizations.getString('leaf')) {
      modelName = 'LeafModel.onnx';
      labels = ['Bacterial', 'Fungal', 'Healthy'];
    } else {
      modelName = 'KD.onnx';
      labels = [
        'Bacterial Blight',
        'Calyx Rot',
        'Cercospora Fungus',
        'Fruit Rot',
        'Healthy',
        'Scab Fungus',
      ];
    }

    // Navigate to preview screen
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PreviewScreen(
          imageBytes: bytes,
          title: categoryTitle,
          modelName: modelName,
          labels: labels,
        ),
      ),
    );
  } catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to get image: $e')));
    }
  }
}
