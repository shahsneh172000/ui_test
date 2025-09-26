import 'package:flutter/material.dart';

void showLanguageSelection(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext bc) {
      return SizedBox(
        child: Wrap(
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('English'),
              onTap: () {
                // Set language to English
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('हिंदी'),
              onTap: () {
                // Set language to Hindi
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('ગુજરાતી'),
              onTap: () {
                // Set language to Gujarati
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('मराठी'),
              onTap: () {
                // Set language to Marathi
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('తెలుగు'),
              onTap: () {
                // Set language to Telugu
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: const Text('ಕನ್ನಡ'),
              onTap: () {
                // Set language to Kannada
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    },
  );
}
