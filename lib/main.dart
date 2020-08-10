import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

void playSound(String path) {
  final player = AudioCache();

// call this method when desired
  player.play('$path');
}

class _MyAppState extends State<MyApp> {
  FlatButton buttonMethod(String pathMusic, String pathImage) {
    return FlatButton(
      onPressed: () {
        setState(() {
          playSound('$pathMusic');
        });
      },
      child: Image.asset('$pathImage'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Scaffold(
          backgroundColor: Colors.blueGrey.shade400,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Container(
                height: 500.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(260.0, 80, 0, 50),
                      height: 500.0,
                      child:
                          buttonMethod('kick-bass.mp3', 'assets/bassdrum.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(240.0, 140, 0, 50),
                      height: 120.0,
                      child: buttonMethod('tom-1.mp3', 'assets/hitom.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(340.0, 140, 0, 50),
                      height: 120.0,
                      child: buttonMethod('tom-2.mp3', 'assets/hitom.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(150.0, 240, 0, 0),
                      height: 120.0,
                      child: buttonMethod('snare.mp3', 'assets/snare.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(400.0, 240, 0, 0),
                      height: 120.0,
                      child: buttonMethod('tom-3.mp3', 'assets/lowtom.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(420.0, 40, 0, 0),
                      height: 200.0,
                      child: buttonMethod(
                          'ridecymbal.wav', 'assets/ridecymbal.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(80.0, 30, 0, 0),
                      height: 200.0,
                      child: buttonMethod('crash.mp3', 'assets/crash.png'),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(50.0, 200.0, 0, 0),
                      height: 400.0,
                      child: buttonMethod('hihat.wav', 'assets/hihat.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
