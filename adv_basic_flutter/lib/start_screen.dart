import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            'Bienvenido al test de UX',
            style: GoogleFonts.titilliumWeb(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            label: Text(
              'Iniciar test',
              style: GoogleFonts.titilliumWeb(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
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
