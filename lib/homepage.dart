import 'package:flutter/material.dart';
import 'package:flutter_forms_2/formpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 300),
        child: SafeArea(
          child: ListTile(
            leading: const CircleAvatar(),
            title: Text("Hello ${username == "" ? "User" : username}"),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FormPage()));
              },
              icon: const Icon(Icons.notifications),
            ),
          ),
        ),
      ),
    );
  }
}
