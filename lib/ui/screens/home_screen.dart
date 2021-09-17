import 'package:flutter/material.dart';
import 'package:quizapp/core/models/question.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;

  final tick = Icon(
    Icons.check,
    color: Colors.white,
  );

  final cross = Icon(
    Icons.close,
    color: Colors.red,
  );

  List<Widget> tickCrossIcons = [];

  List<Question> questions = [
    Question(question: 'Pakistan is so beautiful', answer: true),
    Question(question: 'Pakistan flag Color is Blue?', answer: false),
    Question(question: 'In Cricket Team there are 15 players', answer: false),
    Question(question: 'PM of Pakistan is Imran Khan', answer: true),
    Question(question: 'Cat is harmful for men', answer: false),
    Question(question: 'Mother is the shine of children', answer: true),
    Question(question: 'Allah is the greatest', answer: true),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Question text
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Center(
                  child: Text(
                    questions[count].question,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Spacer(),

              //True Button

              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  if (questions[count].answer == true) {
                    tickCrossIcons.add(tick);
                  } else {
                    tickCrossIcons.add(cross);
                  }
                  count++;
                  setState(() {});
                },
              ),
              SizedBox(
                height: 10,
              ),

              //False Button
              //
              // ignore: deprecated_member_use
              RaisedButton(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                onPressed: () {
                  if (questions[count].answer == false) {
                    tickCrossIcons.add(tick);
                  } else {
                    tickCrossIcons.add(cross);
                  }
                  count++;
                  setState(() {});
                },
              ),

              //Row track
              Row(
                children: tickCrossIcons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
