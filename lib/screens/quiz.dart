import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_tarea_desarrollo/data/questions.dart';
import 'package:quiz_tarea_desarrollo/screens/questions_screen.dart';
import 'package:quiz_tarea_desarrollo/screens/start_screen.dart';


class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}
class _QuizState extends State<Quiz> {

  //Esto sirve para hacer de switch entre pantallas

  var actualScreen = "presentation_screen";

  void switchScreen() {
    setState(() {
      actualScreen = "questions_screen";
    });
  }

  @override
  build(context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black45,

          body: QuestionScreen() ,
    )
    );
  }
}