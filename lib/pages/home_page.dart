import 'package:flutter/material.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("HomePage", style: TextStyle(
              fontSize: 30
            ),),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                User user = User(name: "Asadbek", age: 12);
                Navigator.pushNamed(context, AppRouteNames.detailPage, arguments: user);
              },
            )
          ],
        ),
      ),
    );
  }
}


class User{
  String name;
  int age;
  String? hobby;
  DateTime? birthDay;
  User({required this.name, required this.age, this.hobby, this.birthDay});
  @override
  String toString() {
    return "Name: $name, Age: $age, Hobby: $hobby, \nBirthday: $birthDay";
  }
}