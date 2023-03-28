import 'package:flutter/material.dart';
import 'package:re_time/quiz/view.dart';

import 'disclaimer/view.dart';
import 'view.dart';

class QuizRoutes {
  static const String home = "/";

  // other views - sn. localRoute
  static const String disclaimer = '${home}disclaimer'; // sn. localRoute
  static const String quiz = '${home}quiz'; // sn. localRoute

  // subsections - sn. subRouteHome

  static Map<String, Widget Function(BuildContext)> get routes => {
        home: (context) => const HomeView(),
        // local routes - sn. newRoute
        disclaimer: (context) => const DisclaimerView(), // sn. newRoute
        quiz: (context) => const QuizView(), // sn. newRoute

        // subroutes - ...SubRoutes.routes,
      };

  static get pathsFromHome => [
        disclaimer,
        // subRoutes home
      ];
}
