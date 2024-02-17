import 'package:flutter/material.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';
import 'package:routing_g9/services/route_service/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: AppRouteNames.homePage,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
