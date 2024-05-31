
import 'package:flutter/material.dart';

class DropdownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {
        // Handle change
      },
      hint: Text('Select an option'),
    );
  }
}
    