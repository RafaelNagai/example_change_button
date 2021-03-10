import 'package:example_change_button/entities/answer_entity.dart';
import 'package:flutter/material.dart';

class CustomAnswerOption extends StatelessWidget {
  CustomAnswerOption({
    this.onTap,
    this.answer,
  });

  final Function(Answer) onTap;
  final Answer answer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(answer),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: answer.isCorrect == true ? Colors.greenAccent : Colors.grey,
          ),
        ),
        child: Row(
          children: [
            Radio(
              value: answer,
              groupValue: answer.isCorrect ? answer : null,
              onChanged: (_) {},
            ),
            Text(answer.text),
          ],
        ),
      ),
    );
  }
}
