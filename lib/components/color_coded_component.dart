
import 'package:flutter/material.dart';

class ColorCodedComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ComponentTile(color: Colors.blue, name: 'ASR & TTS'),
            ComponentTile(color: Colors.green, name: 'Dialog Manager'),
            ComponentTile(color: Colors.red, name: 'NLP Engine'),
            ComponentTile(color: Colors.yellow, name: 'Speech Synthesizer'),
          ],
        ),
      ),
    );
  }
}

class ComponentTile extends StatelessWidget {
  final Color color;
  final String name;

  ComponentTile({required this.color, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        name,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
    