import 'package:mypack/frontend/frontend.dart';

class QuizModel extends IModel {
  QuizModel();

  void setKnowPastPercentage(double value) {
    _knowPastPercentage = value.roundToDouble();
    notifyListeners();
  }

  void setSavePastPercentage(double value) {
    _savePastPercentage = value.roundToDouble();
    notifyListeners();
  }

  void setKnowFuturePercentage(double value) {
    _knowFuturePercentage = value.roundToDouble();
    notifyListeners();
  }

  void setWriteFuturePercentage(double value) {
    _writeFuturePercentage = value.roundToDouble();
    notifyListeners();
  }

  double _knowPastPercentage = 50;
  double _savePastPercentage = 50;
  double _knowFuturePercentage = 50;
  double _writeFuturePercentage = 50;

  double get knowPastPercentage => _knowPastPercentage;
  double get savePastPercentage => _savePastPercentage;
  double get knowFuturePercentage => _knowFuturePercentage;
  double get writeFuturePercentage => _writeFuturePercentage;


  void savePercentages() {
    
  }
}

enum QuizState {
  first,
  second,
  third,
  fourth,
}
