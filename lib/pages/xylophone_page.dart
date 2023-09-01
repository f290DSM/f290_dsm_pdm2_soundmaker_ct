import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloPhonePage extends StatefulWidget {
  const XyloPhonePage({super.key});

  @override
  State<XyloPhonePage> createState() => _XyloPhonePageState();
}

class _XyloPhonePageState extends State<XyloPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
      ),
      body: Center(
        child: Column(
          children: [
            newColorButton(Colors.red, 1),
            newColorButton(Colors.orange, 2),
            newColorButton(Colors.yellow, 3),
            newColorButton(Colors.green, 4),
            newColorButton(Colors.blueAccent, 5),
            newColorButton(Colors.blue, 6),
            newColorButton(Colors.purple, 7)
          ],
        ),
      ),
    );
  }

  Widget newColorButton(Color newColor, int noteNumber) {
    return Expanded(
      child: Material(
        child: InkWell(
          splashColor: Colors.black38,
          onTap: () {
            var player = AudioPlayer();
            player.play(AssetSource('notes/note$noteNumber.wav'));
          },
          child: Ink(
            color: newColor,
          ),
        ),
      ),
    );
  }
}
