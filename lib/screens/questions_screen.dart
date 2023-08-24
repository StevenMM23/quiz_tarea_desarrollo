import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_tarea_desarrollo/components/answer_button.dart';
import 'package:quiz_tarea_desarrollo/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  List<bool?> userAnswers = [];

  void answerQuestion(String selectedAnswer) {
    //Aqui el identifica en cual pregunta se encuenta
    final currentQuestion = questions[currentQuestionIndex];

    // Aqui el ve si la respuesta que diste con el boton va acorde a la respuesta que tiene la pregunta
    final isCorrect = currentQuestion.correctAnswer.toLowerCase() ==
        selectedAnswer.toLowerCase();

    userAnswers.add(isCorrect);

    setState(() {
      if (userAnswers.length < questions.length) {
        currentQuestionIndex++;
      }
    });
  }

  @override
  build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      color: Colors.black,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          const SizedBox(
            height: 260,
          ),
          Expanded(flex: 4,child: Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),),

          const SizedBox(
            height: 200, // Espacio adicional entre la pregunta y los botones
          ),
          SizedBox(
            width: double.infinity,
            child: AnswerButton(
              buttonText: "Verdadero",
              onTap: () {
                answerQuestion("Verdadero");
              },

            ),
          ),
          const SizedBox(height: 40), // Espacio entre los botones
          SizedBox(

            width: double.infinity,
            child: AnswerButton(
              buttonText: "Falso",
              onTap: () {
                answerQuestion("Falso");
              },

            ),
          ),
          const SizedBox(
            height:
                30, // Espacio adicional entre los botones y la fila de respuestas
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...userAnswers.map((isCorrect) {
                  return Text(
                    isCorrect == true
                        ? '✔️'
                        : isCorrect == false
                            ? '❌'
                            : '',
                    style: const TextStyle(fontSize: 20, color: Colors.green, ),
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
