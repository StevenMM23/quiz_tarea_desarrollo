import 'package:quiz_tarea_desarrollo/data/questions.dart';



// {
//     Tengo un modelo para realizar una lista de preguntas, esta compuesto por
//     Text: Es la pregunta que hara el quiz,
//     Correct Answer: Que es la respuesta correcta de esa preguna
// }


class QuizQuestions {
  const QuizQuestions(this.text, this.correctAnswer);
  final String text;
  final String correctAnswer;
}