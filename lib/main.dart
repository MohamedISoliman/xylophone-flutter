import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              button(Colors.amber, 1),
              button(Colors.indigo, 2),
              button(Colors.blueAccent, 3),
              button(Colors.cyanAccent, 4),
              button(Colors.green, 7),
              button(Colors.red, 5),
              button(Colors.teal, 6),
            ],
          ),
        ),
      ),
    );
  }
}

Widget button(Color col, int soundNum) {
  return Expanded(
      child: FlatButton(
          onPressed: () {
            playsound(soundNum);
          },
          color: col));
}

void playsound(int soundNum) {
  final audio = AudioCache();
  audio.play('note$soundNum.wav');
}
