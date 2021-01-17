import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

Expanded buildKey(int key, Color ben) {
  return Expanded(
    child: FlatButton(
      color: ben,
      onPressed: () {
        playSound(key);
        //assumes file is in assets directory
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
                buildKey(1, Colors.yellow),
                buildKey(2, Colors.green),
                buildKey(3, Colors.blue),
                buildKey(4, Colors.purple),
                buildKey(5, Colors.red),
                buildKey(6, Colors.orange),
                buildKey(7, Colors.teal),
              ],
            ),
        ),
      ),
    );
  }
}
