import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static String route = '/welcome';

  @override
  Widget build(BuildContext context) {
    //UserProvider userProvider = context.watch<UserProvider>();

    return const Scaffold(
      body: SizedBox(
        child: Center(
          child: Text("Welcome"),
        ),
      ),
    );
  }
}
