import 'package:blank_project/functionality/notifications/local_notification_schedule.dart';
import 'package:blank_project/models/internal/notification_model.dart';
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
            ElevatedButton(
                onPressed: () {
                  LocalNotificationSchedule.scheduleNotification(
                      NotificationModel(
                          id: 1,
                          body: "body",
                          scheduledDate: DateTime(2022, 9, 29, 21, 56, 55),
                          title: "title3"));
                },
                child: const Text("Instant notification")),
          ],
        ),
      ),
    );
  }
}
