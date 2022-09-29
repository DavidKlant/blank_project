import 'package:blank_project/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({super.key});

  static String route = '/home2';

  @override
  Widget build(BuildContext context) {
    //UserProvider userProvider = context.watch<UserProvider>();

    return Scaffold(
      bottomNavigationBar: const BottomNavBar(index: 1),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text("home 2"),
          ],
        ),
      ),
    );
  }
}
