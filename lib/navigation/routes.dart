import 'package:blank_project/pages/home_pages/home_page_1.dart';
import 'package:blank_project/pages/home_pages/home_page_2.dart';
import 'package:blank_project/pages/home_pages/home_page_3.dart';
import 'package:blank_project/pages/init_data_page.dart';
import 'package:blank_project/pages/pop_up_page.dart';
import 'package:blank_project/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static List<GoRoute> allRoutes = [
    GoRoute(
      path: InitDataPage.route,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoTransitionPage<void>(
        key: state.pageKey,
        child: const InitDataPage(),
      ),
    ),
    GoRoute(
      path: WelcomePage.route,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoTransitionPage<void>(
        key: state.pageKey,
        child: const WelcomePage(),
      ),
    ),
    GoRoute(
      path: HomePage1.route,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomePage1(),
      ),
    ),
    GoRoute(
      path: HomePage2.route,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomePage2(),
      ),
    ),
    GoRoute(
      path: HomePage3.route,
      pageBuilder: (BuildContext context, GoRouterState state) =>
          NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomePage3(),
      ),
    ),
    GoRoute(
        path: PopUpPage.route,
        pageBuilder: (BuildContext context, GoRouterState state) {
          Widget child = state.extra as Widget;
          return CustomTransitionPage<void>(
            key: state.pageKey,
            transitionsBuilder: _transitionsBuilder,
            opaque: false,
            child: PopUpPage(
              child: child,
            ),
          );
        }),
  ];
}

Widget _transitionsBuilder(BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) =>
    child;
