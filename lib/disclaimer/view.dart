import 'package:flutter/material.dart';
import 'package:mypack/frontend/frontend.dart';
import 'package:url_launcher/url_launcher.dart';
import '../routes.dart';

const String title = 'Disclaimer';

class DisclaimerView extends StatelessWidget {
  const DisclaimerView({super.key});

  void launchGitHubURL() {
    launchUrl(Uri.https('github.com', ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(children: [
        const Header("Welcome to the quiz made by ReTime"),
        const Paragraph(
            "Every data you enter is stored locally on your device and thrown away when you uninstall the app."),
        const Paragraph(
            "Being a sigle use app you can uninstall it after you are done with the quiz."),
        const Paragraph(
            "If you want to save your results or share them with us or anybody else you can take a screenshot of them the results page."),
        const Paragraph(
            "We suggest to take the quiz when you don't know what to do for at least some 15 minutes if you want to enjoy it."),
        const Paragraph(
            "Until then we suggest you to place this app next to the apps you use the most and use it when you are bored."),
        const Spacer(flex: 1),
        StyledButton(
            onPressed: () => Navigator.pushNamed(context, QuizRoutes.quiz),
            child: const Header("Start the quiz")),
        const Spacer(flex: 1),
        Column(
          children: [
            const Paragraph("The source code is available on GitHub."),
            StyledButton(
                onPressed: launchGitHubURL, child: const Text("GitHub")),
          ],
        ),
      ]),
    );
  }
}
