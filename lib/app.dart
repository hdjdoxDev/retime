// File created by sn. matapp
import 'package:flutter/material.dart';

import 'routes.dart';

class QuizReTimeApp extends StatelessWidget {
  const QuizReTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QuizReTime',
      // dark theme with yellow accent
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: QuizRoutes.home,
      routes: QuizRoutes.routes,
    );
  }
}
