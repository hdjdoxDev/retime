import 'package:flutter/material.dart';
import 'package:mypack/frontend/frontend.dart';

import 'routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz by ReTime'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            for (final route in QuizRoutes.pathsFromHome)
              AppIcon(
                onTap: () => Navigator.pushNamed(context, route),
                iconData: QuizRoutesIcons.icons[route] ?? Icons.help,
              ),
          ],
        ),
      ),
    );
  }
}

extension QuizRoutesIcons on QuizRoutes {
  static const Map<String, IconData> icons = {
    QuizRoutes.home: Icons.home,
  };
}
