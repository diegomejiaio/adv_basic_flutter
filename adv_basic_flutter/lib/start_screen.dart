import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/uxl-hero.png',
            width: 450,
          ),
          const SizedBox(height: 40),
          const Text(
            'Bienvenido al test de UX',
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            label: const Text('Iniciar test'),
            icon: const Icon(Icons.arrow_right_alt),
            onPressed: () {
              startQuiz();
            },
            style: TextButton.styleFrom(
              iconColor: Colors.white,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
