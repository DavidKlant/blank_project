import 'package:blank_project/design/app_design.dart';
import 'package:blank_project/functionality/notifications/local_notification_schedule.dart';
import 'package:blank_project/models/internal/notification_model.dart';
import 'package:blank_project/pages/home_pages/home_page_1.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static String route = '/welcome';

  @override
  Widget build(BuildContext context) {
    //UserProvider userProvider = context.watch<UserProvider>();

    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Welcome"),
            const SizedBox(height: AppDesign.spacer8),
            ElevatedButton(
                onPressed: () {
                  LocalNotificationSchedule.instantNotification();
                },
                child: const Text("Instant notification")),
            const SizedBox(height: AppDesign.spacer8),
            ElevatedButton(
                onPressed: () {
                  LocalNotificationSchedule.scheduleNotification(
                      NotificationModel(
                          id: 1,
                          body: "body",
                          scheduledDate: DateTime(2022, 9, 29, 21, 56, 55),
                          title: "title3"));
                },
                child: const Text("Scheduled notification")),
            const SizedBox(height: AppDesign.spacer8),
            ElevatedButton(
                onPressed: () {
                  context.push(HomePage1.route);
                },
                child: const Text("Go to HomePage1")),
          ],
        ),
      ),
    );
  }
}
