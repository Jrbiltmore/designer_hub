
import 'package:flutter/material.dart';
import '../components/draggable_item.dart';

class DraggableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Screen')),
      body: Center(
        child: DraggableItem(
          data: 'Draggable Data',
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Drag me')),
          ),
        ),
      ),
    );
  }
}
    