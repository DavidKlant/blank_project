import 'package:blank_project/navigation/routes.dart';
import 'package:blank_project/pages/init_data_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[...Routes.allRoutes],
  initialLocation: InitDataPage.route,

  //TODO create error page
  errorBuilder: (context, state) => const InitDataPage(),
);
