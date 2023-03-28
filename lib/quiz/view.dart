import 'package:flutter/material.dart';
import 'package:mypack/frontend/frontend.dart';

import 'vmodel.dart';

const String title = 'Quiz';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomView<QuizModel>(
        title: title,
        body: (context, model, child) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  const Header(
                      "How well you could say about how you spent your last week?"),
                  PercentageSlider(
                      value: model.knowPastPercentage,
                      onChanged: model.setKnowPastPercentage),
                  const Header(
                      "How well you have saved about how you spent your last week?"),
                  PercentageSlider(
                      value: model.savePastPercentage,
                      onChanged: model.setSavePastPercentage),
                  const Header(
                      "How well you could say about how you will spend your next week?"),
                  PercentageSlider(
                      value: model.knowFuturePercentage,
                      onChanged: model.setKnowFuturePercentage),
                  const Header(
                      "How well you have written about how you will spend your next week?"),
                  PercentageSlider(
                      value: model.writeFuturePercentage,
                      onChanged: model.setWriteFuturePercentage),
                  StyledButton(
                      onPressed: model.savePercentages,
                      child: const Text("Next"))
                ],
              ),
            ));
  }
}

class PercentageSlider extends StatelessWidget {
  const PercentageSlider(
      {required this.value, required this.onChanged, super.key});
  final double value;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(children: [
        const Text("0%"),
        Expanded(
            child: Slider(
                value: value,
                min: 0,
                max: 100,
                divisions: 100,
                label: "${value.round()}%",
                onChanged: onChanged)),
        const Text("100%"),
      ]),
    );
  }
}
