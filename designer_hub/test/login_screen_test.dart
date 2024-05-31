
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('LoginScreen has a title and a login button', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
  });
}
