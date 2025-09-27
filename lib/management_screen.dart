import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_localizations.dart';

class ManagementScreen extends StatelessWidget {
  final String diseaseName;

  const ManagementScreen({super.key, required this.diseaseName});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final managementData = localizations.getManagementInfo(diseaseName);

    if (managementData == null || managementData.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(localizations.managementTechniquesTitle),
          backgroundColor: const Color(0xFF39794F),
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              localizations.noManagementInfo,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.managementTechniquesTitle),
        backgroundColor: const Color(0xFF39794F),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (managementData['diseaseName'] != null)
              _buildSectionTitle(context, managementData['diseaseName']),
            if (managementData['description'] != null)
              _buildInfoCard(
                  context, null, managementData['description']),
            if (managementData['causalOrganism'] != null)
              _buildInfoCard(context, localizations.causalOrganismLabel,
                  managementData['causalOrganism']),
            if (managementData['symptoms'] != null)
              _buildInfoCard(
                  context, localizations.symptomsLabel, managementData['symptoms']),
            if (managementData['predisposingFactors'] != null)
              _buildInfoCard(context, localizations.predisposingFactorsLabel,
                  managementData['predisposingFactors']),
            if (managementData['recommendations'] is List)
              _buildListCard(context, localizations.recommendationsLabel,
                  List<String>.from(managementData['recommendations'])),
            
            // Dynamically build sections from the data
            ...managementData.entries
                .where((entry) => entry.key.toLowerCase().contains('management') || entry.key.toLowerCase().contains('sprays'))
                .map((entry) {
              if (entry.value is List) {
                return _buildListCard(context, managementData['${entry.key}Title'] ?? _formatTitle(entry.key), List<String>.from(entry.value));
              }
              return const SizedBox.shrink();
            }).toList(),

            if (managementData['sourceUrl'] != null)
              _buildSourceLink(context, managementData['sourceUrl']),
          ],
        ),
      ),
    );
  }

  String _formatTitle(String key) {
    // Simple formatter for keys like 'pruningManagement' -> 'Pruning Management'
    return key.replaceAllMapped(RegExp(r'([A-Z])'), (match) => ' ${match.group(1)}')
              .trim()
              .split(' ')
              .map((word) => word[0].toUpperCase() + word.substring(1))
              .join(' ');
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: const Color(0xFF39794F)),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String? title, String content) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null)
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            if (title != null) const SizedBox(height: 8),
            Text(content, style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }

  Widget _buildListCard(
      BuildContext context, String title, List<String> items) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ...items.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("• ", style: TextStyle(fontSize: 16)),
                      Expanded(
                          child: Text(item,
                              style: Theme.of(context).textTheme.bodyLarge)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildSourceLink(BuildContext context, String url) {
    final localizations = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.bodyLarge,
          children: [
            TextSpan(text: '${localizations.sourceUrlLabel}: '),
            TextSpan(
              text: url,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                },
            ),
          ],
        ),
      ),
    );
  }
}