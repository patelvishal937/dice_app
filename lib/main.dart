import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const dice_App());
}

class dice_App extends StatelessWidget {
  const dice_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 137, 204),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Dice app',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: Dicebody(),
      ),
    );
  }
}

class Dicebody extends StatefulWidget {
  const Dicebody({super.key});

  @override
  State<Dicebody> createState() => _DicebodyState();
}

class _DicebodyState extends State<Dicebody> {
  @override
  int Leftdicenumber = 1;
  int rightdicenumber = 2;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  Leftdicenumber = Random().nextInt(6) + 1;
                  print("left button is clicked");
                });
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('images/dice$Leftdicenumber.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightdicenumber = Random().nextInt(6) + 1;
                  print("right button is clicked");
                });
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


    // Container(
        //   margin: EdgeInsets.all(20),
        //   width: 120,
        //   height: double.infinity,
        //   child: Expanded(
        //     flex: 1,
        //     child: Image.asset('images/dice5.png'),
        //   ),
        // ),
        // Container(
        //   width: 120,
        //   height: double.infinity,
        //   child: Expanded(
        //     flex: 1,
        //     child: Image.asset('images/dice5.png'),
        //   ),
        // ),