import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: XyloPhone());
  }}
    class XyloPhone extends StatefulWidget {
      //const XyloPhone({Key? key}) : super(key: key);

      @override
      _XyloPhoneState createState() => _XyloPhoneState();
    }

    class _XyloPhoneState extends State<XyloPhone> {

    void playSound(int soundNumber){
      final player = AudioCache();
      player.play('note$soundNumber.wav');
    }
    Expanded buildKey({Color color,int soundNumber}){
     return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );

    }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
                buildKey(color: Colors.red,soundNumber: 1),
              buildKey(color: Colors.orange,soundNumber: 2),
              buildKey(color: Colors.yellow,soundNumber: 3),
              buildKey(color: Colors.green,soundNumber: 4),
              buildKey(color: Colors.teal,soundNumber: 5),
              buildKey(color: Colors.blue,soundNumber: 6),
              buildKey(color: Colors.purple,soundNumber: 7),

            ],
          ),



          ),

        );
      }
    }
