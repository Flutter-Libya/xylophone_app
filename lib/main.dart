import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.yellow, soundNumber: 2),
                buildKey(color: Colors.black, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.pink, soundNumber: 5),
                buildKey(color: Colors.purple, soundNumber: 6),
                buildKey(color: Colors.greenAccent, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
