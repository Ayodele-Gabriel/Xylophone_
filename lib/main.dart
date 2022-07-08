import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Xylophone(),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void playing(int musicDigits) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$musicDigits.wav'),
    );
  }

  Expanded tools({backgroundColor, playingSound}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playing(playingSound);
        },
        style: ButtonStyle(
          backgroundColor: backgroundColor,
        ),
        child: const Text('Floki'),
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
            children: [
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  playingSound: 1),
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  playingSound: 2),
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  playingSound: 3),
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  playingSound: 4),
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                  playingSound: 5),
              tools(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  playingSound: 6),
              tools(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[700]),
                  playingSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}