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
    final currentQuestion = questions[1];

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
          AnswerButton(
            answerText: currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[3],
            onTap: () {},
          ),
          AnswerButton(
            answerText: currentQuestion.answers[4],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
