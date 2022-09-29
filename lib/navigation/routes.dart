import 'package:blank_project/pages/PopUpPage.dart';
import 'package:blank_project/pages/init_data_page.dart';
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
