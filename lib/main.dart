import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey.shade900,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blueGrey.shade900,
          ),
          body: EightBallPage(),
        ),
      ),
    );

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int eightBallVersion = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            eightBallVersion = Random().nextInt(5) + 1;
          });
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset('images/ball$eightBallVersion.png'),
            ),
          ],
        ),
      ),
    );
  }
}
