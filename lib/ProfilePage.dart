// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

// TODO: PROFİL SAYFASI BURADA TASARLANACAK!

class ProfilePage extends StatelessWidget {
  final String name;
  final String surName;
  final String gender;
  final String email;
  final String password;
  ProfilePage(
      {super.key,
      required this.name,
      required this.surName,
      required this.gender,
      required this.email,
      required this.password});

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    const String profilImage = "assets/images/profil_image.jpg";

    return SingleChildScrollView(
      child: Scaffold(
          appBar: _appBarDesign(context),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // profil image kısmı
                const Center(
                  child: CircleAvatar(
                    maxRadius: 100,
                    backgroundImage: AssetImage(profilImage),
                  ),
                ),
      
                const SizedBox(height: 20),
                NameTextWidget(
                  name: "Name",
                  nameTwo: name,
                ),
                NameTextWidget(
                  name: "Surname",
                  nameTwo: surName,
                ),
                NameTextWidget(
                  name: "E-mail",
                  nameTwo: email,
                ),
                NameTextWidget(
                  name: "Password",
                  nameTwo: password,
                ),
      
                const Text(
                  "Date Of Birth ",
                  style: TextStyle(fontSize: 18),
                ),
      
                const SizedBox(height: 20),
      
                
              ],
            ),
          )),
    );
  }

  AppBar _appBarDesign(BuildContext context) {
    return AppBar(
      leadingWidth: 75,
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.purple,
            ),
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      centerTitle: true,
      title: const Text(
        "My Profile",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class NameTextWidget extends StatelessWidget {
  const NameTextWidget({
    super.key,
    required this.name,
    required this.nameTwo,
  });

  final String nameTwo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 20),
        Text(
          nameTwo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}




