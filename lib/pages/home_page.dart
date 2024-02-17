import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:routing_g9/services/route_service/app_route_name.dart';

import '../services/route_service/observe_aware.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with RouteAware{

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ObserveAware.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }


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

  @override
  void didPop() {
    log("HomePage: didPop");
    super.didPop();
  }

  @override
  void didPush() {
    log("HomePage: didPush");
    super.didPush();
  }

  @override
  void didPopNext() {
    log("HomePage: didPopNext");
    super.didPopNext();
  }

  @override
  void didPushNext() {
    log("HomePage: didPushNext");
    super.didPushNext();
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