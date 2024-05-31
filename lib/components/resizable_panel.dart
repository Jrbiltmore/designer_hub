
import 'package:flutter/material.dart';

class ResizablePanel extends StatefulWidget {
  final Widget child;

  ResizablePanel({required this.child});

  @override
  _ResizablePanelState createState() => _ResizablePanelState();
}

class _ResizablePanelState extends State<ResizablePanel> {
  double _height = 200.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        setState(() {
          _height += details.delta.dy;
        });
      },
      child: Container(
        height: _height,
        child: widget.child,
      ),
    );
  }
}
    