import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: EightBallStateless(),
    ),
  );
}

class EightBallStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Ask me anything'),
      ),
      body: EightBallPage(),
    );
  }
}

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int eightBallNumber = 1;

  void changeEightBall() {
    setState(() {
      eightBallNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeEightBall();
              },
              child: Image.asset('images/ball$eightBallNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
