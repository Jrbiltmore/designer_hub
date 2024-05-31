
import 'package:flutter/material.dart';

class DraggableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Screen')),
      body: Center(child: Text('Draggable Screen Content')),
    );
  }
}
