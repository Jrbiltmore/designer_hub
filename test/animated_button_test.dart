
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/components/animated_button.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('AnimatedButton displays text and animates', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimatedButton(
            text: 'Click Me',
            onPressed: () {},
          ),
        ),
      ),
    );
    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byType(AnimatedButton), findsOneWidget);
  });
}
    