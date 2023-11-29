import 'package:flutter/material.dart';
import 'package:adv_basic_flutter/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basic_flutter/models/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      final Map<String, Object> summaryItem = {
        'question_index': i,
        'question': questions[i].question.toString(),
        'selectedAnswer': chosenAnswers[i].toString(),
        'correctAnswer': questions[i].answers[questions[i].correctAnswer],
        'isCorrect':
            chosenAnswers[i] == questions[i].answers[questions[i].correctAnswer]
                ? true
                : false,
      };

      summary.add(summaryItem);
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((element) => element['isCorrect'] as bool == true)
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                'You answered $numCorrectAnswers out of $numTotalQuestions questions correctly',
                style: GoogleFonts.titilliumWeb(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 15, 6, 26),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(20),
              height: 500,
              child: Scrollbar(
                child: QuestionsSummary(summaryData),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Start Again'),
            ),
          ],
        ),
      ),
    );
  }
}
