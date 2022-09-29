import 'package:blank_project/functionality/dev_funcitons.dart';
import 'package:blank_project/main.dart';
import 'package:blank_project/models/internal/notification_model.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

bool isInit = false;

class LocalNotificationSchedule {
  static Future<void> initTimezone() async {
    if (isInit) {
      return;
    }
    final String currentTimeZone =
        await FlutterNativeTimezone.getLocalTimezone();
    tz.initializeTimeZones();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
    isInit = true;
  }

  // notification scheduled for a precise date and time
  static void scheduleNotification(NotificationModel notificationModel) async {
    await initTimezone();
    await flutterLocalNotificationsPlugin.zonedSchedule(
        notificationModel.id,
        notificationModel.title,
        notificationModel.body,
        tz.TZDateTime.from(notificationModel.scheduledDate, tz.local),
        const NotificationDetails(
            android: AndroidNotificationDetails(
                'your channel id', 'your channel name',
                channelDescription: 'your channel description')),
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  // used for testing
  static void instantNotification() async {
    Future.delayed(const Duration(seconds: 3), () async {
      const AndroidNotificationDetails androidNotificationDetails =
          AndroidNotificationDetails('your channel id', 'your channel name',
              channelDescription: 'your channel description',
              importance: Importance.max,
              priority: Priority.high,
              ticker: 'ticker');
      const NotificationDetails notificationDetails =
          NotificationDetails(android: androidNotificationDetails);
      await flutterLocalNotificationsPlugin.show(
          0, 'plain title', 'plain body', notificationDetails,
          payload: 'item x');
    });
  }

  static void cancelAll() async {
    DevFunctions.log("All reminder canceled");
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}
