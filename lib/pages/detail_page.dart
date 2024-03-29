import 'package:flutter/material.dart';
import 'package:routing_g9/pages/home_page.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {

    var user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.toString(), style: const TextStyle(
              fontSize: 30
            ),),
            MaterialButton(
              color: Colors.red,
              onPressed: (){
                user.hobby = 'Playing chess';
                Navigator.pushNamed(context, AppRouteNames.simpleOne, arguments: user);
              },
            )
          ],
        ),
      ),
    );
  }
}
