import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos nativamente',
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos nativamente',
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos nativamente',
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos nativamente',
          ),
        ],
      ),
    );
  }
}
