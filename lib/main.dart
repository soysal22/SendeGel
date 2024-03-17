// ignore_for_file: must_be_immutable

import 'package:appjamteam39/ProfilePage.dart';
import 'package:appjamteam39/SettingsPage.dart';
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
      debugShowCheckedModeBanner: false,
      home: ProfilePage(
        text: "ada",
      ),
    );
  }
}
