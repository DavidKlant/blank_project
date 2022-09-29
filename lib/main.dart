import 'package:blank_project/state/provider_list.dart';
import 'package:flutter/material.dart';

//FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// FlutterLocalNotificationsPlugin();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //LocalNotificationsSetup.init();
  //await SharedPrefs.init();
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
        //routeInformationParser: router.routeInformationParser,
        //routerDelegate: router.routerDelegate,
        //routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
