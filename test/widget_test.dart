// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Make sure this matches your project name
import 'package:ui_test/main.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // The 'const' keyword has been removed from the next line to fix the error.
    await tester.pumpWidget(MyApp());

    // You can add verification steps here if needed.
    // For example, verify that the splash screen shows a loading indicator.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // You can also wait for the splash screen timer to finish
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Verify that we have navigated to the HomeScreen
    expect(find.text('Welcome to the Home Screen!'), findsOneWidget);
  });
}