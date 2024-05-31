
import 'package:flutter/material.dart';

class ResizableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resizable Screen')),
      body: Center(child: Text('Resizable Screen Content')),
    );
  }
}
