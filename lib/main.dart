<<<<<<< HEAD
// ignore_for_file: must_be_immutable

import 'package:appjamteam39/ProfilePage.dart';
import 'package:appjamteam39/SettingsPage.dart';
=======
import 'package:appjamteam39/ProfilePage.dart';
>>>>>>> d3f5dc7ce397d22a9ce80c874a33af17089465aa
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
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      home: ProfilePage(
        text: "ada",
=======
      home: ProfilePage(
        name: "name",
        surName: "surName",
        gender: "gender",
        email: "email",
        password: "password",
>>>>>>> d3f5dc7ce397d22a9ce80c874a33af17089465aa
      ),
    );
  }
}
