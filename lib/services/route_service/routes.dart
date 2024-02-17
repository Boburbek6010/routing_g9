import 'package:flutter/cupertino.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

import '../../pages/detail_page.dart';
import '../../pages/home_page.dart';
import '../../pages/main_page.dart';

class Routes{

  static final Map<String, WidgetBuilder> routes = {
  AppRouteNames.mainPage:(context) => const MainPage(),
  AppRouteNames.homePage: (context) => const HomePage(),
  AppRouteNames.detailPage: (context) => const DetailPage(),
  };

}