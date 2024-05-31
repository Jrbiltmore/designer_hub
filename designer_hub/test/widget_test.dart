
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/main.dart';

void main() {
  testWidgets('Verify Widget', (WidgetTester tester) async {
    await tester.pumpWidget(AlistaireDesignerHub());
    expect(find.text('Alistaire Drag and Drop Designer Hub'), findsOneWidget);
  });
}
