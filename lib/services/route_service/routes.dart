import 'package:flutter/material.dart';
import 'package:routing_g9/pages/simple_one.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

import '../../pages/detail_page.dart';
import '../../pages/home_page.dart';
import '../../pages/main_page.dart';

class AppRoutes{

  const AppRoutes();

  static Route onGenerateRoute(RouteSettings settings){
    switch(settings.name){

      case AppRouteNames.homePage:{
        return MaterialPageRoute(builder: (context) => const HomePage(), settings: settings);
      }

      case AppRouteNames.detailPage:{
        return MaterialPageRoute(builder: (context) => const DetailPage(), settings:  settings);
      }

      case AppRouteNames.mainPage:{
        return MaterialPageRoute(builder: (context) => const MainPage(), settings: settings);
      }

      case AppRouteNames.simpleOne:{
        return MaterialPageRoute(builder: (context) => const SimpleOne(), settings: settings);
      }

      default:{
        return _errorRoute();
      }
    }
  }

  static Route _errorRoute() => MaterialPageRoute(
    builder: (context){
      return const Scaffold(
        body: Center(
          child: Text("Error route", style: TextStyle(
            fontSize: 30
          ),),
        ),
      );
    }
  );

}