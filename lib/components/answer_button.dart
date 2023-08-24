import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {


  AnswerButton({
    required this.buttonText,
    required this.onTap,
    required this.isCorrect,
  });


  final String buttonText;
  final void Function() onTap;
  final bool isCorrect;
  @override

  build(context) {
    return ElevatedButton(onPressed: onTap ,  style: ElevatedButton.styleFrom(
        backgroundColor: buttonText.toLowerCase() == "verdadero" ? Colors.green : Colors.red,
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
        foregroundColor: Colors.white,
    ),
      child: Text(buttonText, textAlign: TextAlign.center,  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}