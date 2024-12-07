import 'package:flutter/material.dart';
import 'package:my_inherited_app_2/inherited/state_controller.dart';
import 'package:my_inherited_app_2/models/user_model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text("USer page"),
      ),
      body: Center(
        child: Text(
            "username is ${user.name} and user email is ${user.email} and user password is ${user.password}"),
      ),
    );
  }
}
