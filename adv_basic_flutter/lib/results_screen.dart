import 'package:flutter/material.dart';
import 'package:adv_basic_flutter/quiz.dart';
import 'package:adv_basic_flutter/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      final question = questions[i];
      final selectedAnswer = selectedAnswers[i];
      final correctAnswer = question.correctAnswer;

      final Map<String,Object> summaryItem = {
        'question': question.question,
        'selectedAnswer': selectedAnswer,
        'correctAnswer': correctAnswer,
      };

      summary.add(summaryItem);
    }

    return summary;
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'You answered X out of Y questions correctly',
                style: GoogleFonts.titilliumWeb(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (BuildContext context, int index) {
                  var question = questions[index];
                  var selectedAnswer = selectedAnswers[index];
                  var correctAnswer = question.correctAnswer;
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: selectedAnswer == correctAnswer
                          ? Colors.green
                          : Colors.red,
                      child: Text('${index + 1}'),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(question.question),
                        SizedBox(height: 8),
                        Text('Selected Answer: $selectedAnswer'),
                        SizedBox(height: 8),
                        Text('Correct Answer: $correctAnswer'),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
                        Text('Selected Answer: $selectedAnswer'),
                        SizedBox(height: 8),
                        Text('Correct Answer: $correctAnswer'),
                      ],
                    ),
                  );
                },
              ),
            )
          ], //add a button tu return to the start screen
        ),
      ),
    );
  }
}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'You answered X out of Y questions correctly',
                style: GoogleFonts.titilliumWeb(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (BuildContext context, int index) {
                  var question = questions[index];
                  var selectedAnswer = widget.selectedAnswers[index];
                  var correctAnswer = question.correctAnswer;
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: selectedAnswer == correctAnswer
                          ? Colors.green
                          : Colors.red,
                      child: Text('${index + 1}'),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(question.question),
                        SizedBox(height: 8),
                        Text('Selected Answer: $selectedAnswer'),
                        SizedBox(height: 8),
                        Text('Correct Answer: $correctAnswer'),
                      ],
                    ),
                  );
                },
              ),
            )
          ], //add a button tu return to the start screen
        ),
      ),
    );
  }
}
