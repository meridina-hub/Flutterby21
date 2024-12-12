import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:home_work_6_xylophone/widgets/xylophone_key.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audio = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          XylophoneKey(
            color: Colors.red,
            onPressed: () async {
              audio.play(AssetSource('assets/do.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.orange,
            onPressed: () async {
              await audio.play(AssetSource('assets/re.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.yellow,
            onPressed: () async {
              await audio.play(AssetSource('assets/mi.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.green,
            onPressed: () async {
              await audio.play(AssetSource('assets/fa.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.greenAccent,
            onPressed: () async {
              await audio.play(AssetSource('assets/so.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.blue,
            onPressed: () async {
              await audio.play(AssetSource('assets/la.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.purple,
            onPressed: () async {
              await audio.play(AssetSource('assets/si.wav'));
            },
          ),
          XylophoneKey(
            color: Colors.pink,
            onPressed: () async {
              await audio.play(AssetSource('assets/do.wav'));
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff000000),
        width: 440,
        height: 89,
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff000000),
      title: const Text(
        'Flutter Xylophone',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
