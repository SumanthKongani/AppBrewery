import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playsound(int x) {
  final player = AudioCache();
  player.play("note$x.wav");
}

Expanded buildKey(Color color,int x) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playsound(x);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.pink[500],1),
              buildKey(Colors.indigo[900],2),
              buildKey(Colors.blue[700],3),
              buildKey(Colors.green[700],4),
              buildKey(Colors.yellow[700],5),
              buildKey(Colors.orange[900],6),
              buildKey(Colors.red[900],7),
            ],
          ),
        ),
      ),
    );
  }
}
