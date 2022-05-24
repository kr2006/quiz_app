import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(title: '1. When Ukraine became independent?', answers: [
      {
        'answer': '1900',
      },
      {
        'answer': '1991',
      },
    ]),
    Question(title: '2. Who was the first president of Ukraine?', answers: [
      {
        'answer': 'Kravchuk',
      },
      {
        'answer': 'Kuchma',
      },
      {
        'answer': 'Yanukovych',
      },
      {
        'answer': 'Zelenskiy',
      },
    ]),
    Question(title: '3. What was the first capital of Ukraine?', answers: [
      {
        'answer': 'Kyiv',
      },
      {
        'answer': 'Rivne',
      },
      {
        'answer': 'Kharkiv',
      },
      {
        'answer': 'Zhytomyr',
      },
    ]),
    Question(title: '4. Who wrote Ukrainian anthem?', answers: [
      {
        'answer': 'Kravchuk',
      },
      {
        'answer': 'Khmelnytskiy',
      },
      {
        'answer': 'Kozaky',
      },
      {
        'answer': 'Chubunskiy',
      },
    ]),
    Question(title: '5. Which country is NOT a Ukrainian neighboor?', answers: [
      {
        'answer': 'Sweden',
      },
      {
        'answer': 'Poland',
      },
      {
        'answer': 'Turkey',
      },
    ]),
    Question(title: '6. Does Ukraine have an access to the sea', answers: [
      {
        'answer': 'Yes',
      },
      {
        'answer': 'No',
      },
    ]),
    Question(title: '7. Are you planning to stay living in Uktaine?', answers: [
      {
        'answer': 'Yes',
      },
      {
        'answer': 'No',
      },
      {
        'answer': 'Not sure',
      },
    ])
  ];
  List<Question> get qestions => [..._data];
}
