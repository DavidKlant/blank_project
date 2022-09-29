import 'package:blank_project/functionality/notifications/local_notification_schedule.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static String route = '/welcome';

  @override
  Widget build(BuildContext context) {
    //UserProvider userProvider = context.watch<UserProvider>();

    return Scaffold(
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Welcome"),
            ElevatedButton(
                onPressed: () {
                  LocalNotificationSchedule.instantNotification();
                },
                child: const Text("Instant notification")),
          ],
        ),
      ),
    );
  }
}
