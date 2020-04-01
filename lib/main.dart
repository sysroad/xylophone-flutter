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

  List<Widget> buildButtons(List<Color> colors) {
    List<Widget> buttons = List<Widget>();
    for (int i = 0; i < colors.length; ++i) {
      buttons.add(createButton(colors[i], i + 1));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: buildButtons(<Color>[
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.teal,
              Colors.blue,
              Colors.purple,
            ]),
          ),
        ),
      ),
    );
  }
}
