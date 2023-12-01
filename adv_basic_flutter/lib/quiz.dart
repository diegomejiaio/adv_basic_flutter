import 'package:flutter/material.dart';
import 'package:adv_basic_flutter/start_screen.dart';
import 'package:adv_basic_flutter/questions_screen.dart';
import 'package:adv_basic_flutter/data/questions.dart';
import 'package:adv_basic_flutter/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void resetQuiz() {
    setState(() {
      activeScreen = 'start-screen';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget? screenWidget;

    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: resetQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 68, 3, 63),
                Color.fromARGB(255, 27, 1, 25)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
