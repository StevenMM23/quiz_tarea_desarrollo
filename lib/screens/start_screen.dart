import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("How much do you know? ",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(
          height: 40,
        ),
        OutlinedButton(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white, foregroundColor: Colors.black45),
          child: const Text("Start Quiz!"),
        )
      ],
    ));
  }
}
