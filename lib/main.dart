import 'package:appjamteam39/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:appjamteam39/EntryPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(
          name: "name",
          surName: "surName",
          gender: "gender",
          email: "email",
          password: "password",),
    );
  }
}
