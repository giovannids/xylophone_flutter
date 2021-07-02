import 'package:flutter/material.dart';
// Importa el paquete audioplayers
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final player = AudioCache();
                player.play('note1.wav');
              },
              child: Text('Play'),
            ),
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
