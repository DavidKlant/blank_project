import 'package:blank_project/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitDataPage extends StatefulWidget {
  static String route = '/init_data';

  const InitDataPage({Key? key}) : super(key: key);

  @override
  State<InitDataPage> createState() => _InitDataPageState();
}

class _InitDataPageState extends State<InitDataPage> {
  @override
  void initState() {
    Future.wait([
      // TODO add init methods / wait for data
    ]).then((value) {
      context.push(WelcomePage.route);
    });
    //ScheduleReminders.scheduleAllReminder(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // return loading widget
        child: CircularProgressIndicator(),
      ),
    );
  }
}
