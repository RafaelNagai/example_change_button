import 'package:example_change_button/entities/answer_entity.dart';

class DataMock {
  List<Answer> getAnswers() {
    return <Answer>[
      Answer(
        id: 1,
        text: 'Escolha errada',
        isCorrect: false,
      ),
      Answer(
        id: 2,
        text: 'Escolha errada',
        isCorrect: false,
      ),
      Answer(
        id: 3,
        text: 'Escolha correta',
        isCorrect: true,
      ),
      Answer(
        id: 4,
        text: 'Escolha errada',
        isCorrect: false,
      ),
    ];
  }
}
