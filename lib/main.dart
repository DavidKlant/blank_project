import 'package:blank_project/design/app_design_theme_data.dart';
import 'package:blank_project/functionality/notifications/local_notifications_setup.dart';
import 'package:blank_project/functionality/shared_prefs.dart';
import 'package:blank_project/navigation/router.dart';
import 'package:blank_project/state/provider_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocalNotificationsSetup.init();
  await SharedPrefs.init();
  runApp(const BlankApp());
}

class BlankApp extends StatelessWidget {
  const BlankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderList(
      child: MaterialApp.router(
        theme: AppDesignThemeData.themeData,
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
