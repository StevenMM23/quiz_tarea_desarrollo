import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {


  const AnswerButton({super.key,
    required this.buttonText,
    required this.onTap,

  });


  final String buttonText;
  final void Function() onTap;
  @override

  build(context) {
    return ElevatedButton(onPressed: onTap ,  style: ElevatedButton.styleFrom(
        backgroundColor: buttonText.toLowerCase() == "verdadero" ? Colors.green : Colors.red,
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
        foregroundColor: Colors.white,
    ),
      child: Text(buttonText, textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}