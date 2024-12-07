import 'package:flutter/material.dart';
import 'package:my_inherited_app_2/inherited/state_controller.dart';

class AddNewuser extends StatefulWidget {
  const AddNewuser({super.key});

  @override
  State<AddNewuser> createState() => _AddNewuserState();
}

class _AddNewuserState extends State<AddNewuser> {
  String userName = "";
  String userEmail = "";
  String userPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add user"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "name"),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Email"),
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Pasword"),
              onChanged: (value) {
                setState(() {
                  userPassword = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  StateController.of(context).UpdateUser(
                    name: userName,
                    email: userEmail,
                    password: userPassword,
                  );
                  Navigator.pop(context);
                },
                child: Text("Add User"))
          ],
        ),
      ),
    );
  }
}
