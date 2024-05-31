
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('HomeScreen has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Welcome to the Home Screen!'), findsOneWidget);
  });
}
