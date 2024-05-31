
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/resizable_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('ResizableScreen has a title and content', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ResizableScreen()));
    expect(find.text('Resizable Screen'), findsOneWidget);
    expect(find.text('Resizable Screen Content'), findsOneWidget);
  });
}
