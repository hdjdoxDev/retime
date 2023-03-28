import 'package:mypack/locator.dart';

import 'api.dart';
import 'quiz/vmodel.dart';

void setupQuizLocator() {
  final l = locator;

  // services
  l.registerLazySingleton<IQuizReTimeApi>(() => DummyQuizReTimeApi());
  // l.registerLazySingletonAsync<IQuizReTimeApi>(() => RealQuizReTimeApi.init());

  // viewmodels
  l.registerFactory<QuizModel>(() => QuizModel());

  // subsections
  // setupEgLocator();
}
