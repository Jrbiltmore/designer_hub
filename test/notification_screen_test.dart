
import 'package:flutter_test/flutter_test.dart';
import 'package:alistaire_designer_hub/screens/notification_screen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('NotificationScreen has a title and content', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: NotificationScreen()));
    expect(find.text('Notifications'), findsOneWidget);
    expect(find.text('Show Notification'), findsOneWidget);
  });
}
    