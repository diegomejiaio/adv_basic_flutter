import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: summaryData.map(
          (data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: (data['isCorrect'] as bool)
                        ? const Color.fromARGB(255, 74, 135, 86)
                        : const Color.fromARGB(255, 216, 79, 79),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.titilliumWeb(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['selectedAnswer'] as String,
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(255, 0, 149, 160),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['correctAnswer'] as String,
                        style: GoogleFonts.titilliumWeb(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: const Color.fromARGB(140, 255, 255, 255),
                        ),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList(),
      ),
    );
  }
}
