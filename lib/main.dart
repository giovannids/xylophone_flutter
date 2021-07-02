import 'package:flutter/material.dart';
// Importa el paquete audioplayers
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  // usa una función que recibe un argumento o parámetro
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(1);
                  },
                  child: Container(color: Colors.red),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  child: Container(color: Colors.blue),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  child: Container(color: Colors.orange),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  child: Container(color: Colors.green),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  child: Container(color: Colors.teal),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  child: Container(color: Colors.yellow),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  child: Container(color: Colors.purple),
                ),
              ),
            ],
            // Propiedades complementarias
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}

/*
NOTAS
audioplayers
add it to your class as a static member: static AudioCache player = AudioCache();
or as a local variable: final player = AudioCache();

REFERENCIAS
https://pub.dev/
https://pub.dev/packages/audioplayers
https://github.com/luanpotter/audioplayers/blob/master/packages/audioplayers/doc/audio_cache.md
 */
