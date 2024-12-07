import 'package:flutter/material.dart';
import 'package:my_inherited_app_2/inherited/state_controller.dart';
import 'package:my_inherited_app_2/models/user_model.dart';
import 'package:my_inherited_app_2/pages/home_page.dart';

void main() {
  runApp(StateController(
    user: User(name: "name", email: "email", password: "password"),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
