class Countriesmodel {
  final String question;
  final String capitalImage;
  final List<Answer> answers;

  Countriesmodel(
      {required this.question,
      required this.capitalImage,
      required this.answers});
}

class Answer {
  final String answer;
  final bool isTrue;

  Answer({required this.answer, required this.isTrue});
}

Countriesmodel test1 = Countriesmodel(
    question: "Туштук Кореянын борбору",
    capitalImage: 'assets/countries/images.jpeg',
    answers: [
      Answer(answer: "Guandjou", isTrue: false),
      Answer(answer: "Seoul", isTrue: true),
      Answer(answer: "Pekin", isTrue: false),
      Answer(answer: "Washingtion", isTrue: false),
    ]);
List<Countriesmodel> tests = [test1];
