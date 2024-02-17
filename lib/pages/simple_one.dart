import 'package:flutter/material.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

import 'home_page.dart';

class SimpleOne extends StatelessWidget {
  const SimpleOne({super.key});

  @override
  Widget build(BuildContext context) {
    var user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.toString()),
            MaterialButton(
              color: Colors.red,
              onPressed: (){
                user.birthDay = DateTime.now();
                Navigator.pushNamed(context, AppRouteNames.mainPage, arguments: user);
              },
            )
          ],
        ),
      ),
    );
  }
}
