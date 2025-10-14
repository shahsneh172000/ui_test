import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_localizations.dart';
import 'main.dart'; // Assuming main.dart contains LocaleProvider

void showLanguageSelection(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (BuildContext bc) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              AppLocalizations.of(context).selectLanguage,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(height: 1),
          ...AppLocalizations.supportedLanguages.entries.map((entry) {
            return _buildLanguageTile(context, entry.value, entry.key);
          }).toList(),
          const SizedBox(height: 16),
        ],
      );
    },
  );
}

Widget _buildLanguageTile(
    BuildContext context, String languageName, String languageCode) {
  final provider = Provider.of<LocaleProvider>(context, listen: false);
  final bool isSelected = provider.locale.languageCode == languageCode;

  return ListTile(
    title: Text(
      languageName,
      style: TextStyle(
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        color: isSelected ? const Color(0xFF39794F) : Colors.black87,
      ),
    ),
    onTap: () {
      provider.setLocale(Locale(languageCode));
      Navigator.of(context).pop();
    },
  );
}
