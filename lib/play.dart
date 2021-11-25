import 'dart:async';
//import 'ContactUs.dart';
import 'package:flutter/material.dart';

import 'alphabrain.dart';

Alphabrain alphaBrain = Alphabrain();

void main() => runApp(MaterialApp(
      home: QuizPage(),
    ));

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  void initState() {
    super.initState();

    startTimer();
  }

  int seconds = 5;
  Timer? timer;

  Widget buildTime() {
    return Text(
      "$seconds",
      style: TextStyle(fontSize: 20, color: Colors.black),
    );
  }

  void stoptimer() {
    timer?.cancel();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else if (seconds == 0) {
          alphaBrain.nextAlphabet();
          setState(() {
            seconds = 5;
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Center(child: Text("Play Screen")),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(child: buildTime()),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        alphaBrain.getalphabetText(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: const Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            alphaBrain.nextAlphabet();
                            setState(() {
                              seconds = 5;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: const Text(
                            'previous',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            alphaBrain.previousAlphabet();
                            setState(() {
                              seconds = 5;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: const Text(
                            'Start timer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                         if(!timer!.isActive){
                          startTimer();
                         }
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          child: const Text(
                            'stop timer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          onPressed: () {
                            stoptimer();
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}





/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/