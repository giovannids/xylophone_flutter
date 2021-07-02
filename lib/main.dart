import 'package:flutter/material.dart';
// Importa el paquete audioplayers
import 'package:audioplayers/audioplayers.dart';

// función del primer tipo que no recibe ni devuelve ningún valor
void main() {
  runApp(XylophoneApp());
}

// (fat) arrow function
// void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // función del segundo tipo que recibe un argumento o parámetro
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note1.wav');
  }

  // función del tercer tipo que recibe valores y devuelve un valor
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(color: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.orange, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.yellow, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
            // Propiedades complementarias
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
        // Propiedades complementarias
        backgroundColor: Colors.black,
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
