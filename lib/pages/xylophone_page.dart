import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XyloPhonePage extends StatefulWidget {
  const XyloPhonePage({super.key});

  @override
  State<XyloPhonePage> createState() => _XyloPhonePageState();
}

class _XyloPhonePageState extends State<XyloPhonePage> {
  bool isXyloPhone = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isXyloPhone = !isXyloPhone;
              });
            },
            icon: isXyloPhone
                ? const Icon(Icons.grid_4x4)
                : const Icon(Icons.list),
          ),
        ],
      ),
      body: isXyloPhone ? createXyloPhoneWidget() : createFunnySoundsBoard(),
    );
  }

  Widget createFunnySoundsBoard() {
    return Center(
      child: Column(
        children: [
          // Inicio Linha
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.amberAccent, 1),
                newColorButton(Colors.orange, 2),
                newColorButton(Colors.red, 3),
              ],
            ),
          ),
          // Final Linha

          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.blue, 1),
                newColorButton(Colors.pink, 2),
                newColorButton(Colors.green, 3),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.black, 1),
                newColorButton(Colors.yellow, 2),
                newColorButton(Colors.pink, 3),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newColorButton(Colors.amberAccent, 1),
                newColorButton(Colors.orange, 2),
                newColorButton(Colors.red, 3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget createXyloPhoneWidget() {
    return Center(
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
