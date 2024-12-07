import 'package:flutter/material.dart';
import 'package:my_inherited_app_2/inherited/state_controller.dart';
import 'package:my_inherited_app_2/models/user_model.dart';
import 'package:my_inherited_app_2/pages/add_newuser.dart';
import 'package:my_inherited_app_2/pages/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name:${user.name}"),
            const SizedBox(
              height: 10,
            ),
            Text("Email:${user.email}"),
            const SizedBox(
              height: 10,
            ),
            Text("Password:${user.password}"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  //go to add new user page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddNewuser(),
                      ));
                },
                child: const Text("Add new user")),
            ElevatedButton(
                onPressed: () {
                  //go to add new user page
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserPage(),
                      ));
                },
                child: const Text("user page"))
          ],
        ),
      ),
    );
  }
}
