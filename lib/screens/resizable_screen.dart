
import 'package:flutter/material.dart';
import '../components/resizable_panel.dart';

class ResizableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resizable Screen')),
      body: Center(
        child: ResizablePanel(
          child: Container(
            width: double.infinity,
            color: Colors.green,
            child: Center(child: Text('Resize me')),
          ),
        ),
      ),
    );
  }
}
    