import 'package:adv_basic_flutter/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basic_flutter/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[2];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(currentQuestion.question,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
          ),
          const SizedBox(height: 16),
          ...currentQuestion.answers.map((item) {
            return AnswerButton(
              answerText: item,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
