import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
/*void main() {
  runApp(MyApp());
}

() => {
                //anonymous fuction when you only use it once
                print('Answer 1 chosen!'),
              },
*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//leading uderscore makes the class/any virable private,

class _MyAppState extends State<MyApp> {
  //State<MyApp> this state class belong to MyApp

  int _questionIndex = 0;
  void _answerQuestion() {
    print('Answer chosen!');
    setState(() {
      // used to change a state, it calls the build widget again with the changed values
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      //Map
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['Black', 'Red', 'Green', 'white']
      },
      {
        'questionText': 'what\'s your favourite animal',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'Who\'s your favourite instructor',
        'answers': ['Max', 'Thanos', 'Thapelo', 'Max']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]
                ['questionText']), //use the widget we created on quetion class
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(), //Mapping a list ... the take a list and pull all the values out of it and add them to the as individual values
          ],
        ),
      ), //scaffold creates a based page design
    );
  }
}
