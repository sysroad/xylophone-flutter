import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget createButton(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        child: null,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(Colors.red, 1),
              createButton(Colors.orange, 2),
              createButton(Colors.yellow, 3),
              createButton(Colors.green, 4),
              createButton(Colors.teal, 5),
              createButton(Colors.blue, 6),
              createButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
