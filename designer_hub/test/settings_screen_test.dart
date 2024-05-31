
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/settings_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('SettingsScreen has a title and content', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SettingsScreen()));
    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Settings Page'), findsOneWidget);
  });
}
