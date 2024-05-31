
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/draggable_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('DraggableScreen has a title and content', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: DraggableScreen()));
    expect(find.text('Draggable Screen'), findsOneWidget);
    expect(find.text('Draggable Screen Content'), findsOneWidget);
  });
}
