import 'package:example_change_button/components/custom_option.dart';
import 'package:flutter/material.dart';

import 'entities/answer_entity.dart';
import 'mock/data_mock.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Answer> answers = DataMock().getAnswers();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              for (var answer in answers)
                CustomAnswerOption(
                  answer: answer,
                  onTap: (answerSelected) {
                    print('cliquei na opcao de id: ${answerSelected.id}');
                    setState(() {
                      answers.forEach((element) => element.isCorrect = false);
                      answers
                          .firstWhere((element) => element == answer)
                          .isCorrect = true;
                    });
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
