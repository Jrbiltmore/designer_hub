
import 'package:flutter/material.dart';
import '../utils/notification_utils.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NotificationUtils.showNotification(title: 'Test', body: 'This is a test notification.');
          },
          child: Text('Show Notification'),
        ),
      ),
    );
  }
}
    