
import 'package:flutter/material.dart';

class DraggableItem extends StatelessWidget {
  final String data;
  final Widget child;

  DraggableItem({required this.data, required this.child});

  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      data: data,
      child: child,
      feedback: Material(
        child: Opacity(
          opacity: 0.7,
          child: child,
        ),
      ),
      childWhenDragging: Container(),
    );
  }
}
