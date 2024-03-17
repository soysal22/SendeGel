// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

<<<<<<< HEAD
class ProfilePage extends StatelessWidget {
  final String text;

  const ProfilePage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "Deniz";
    String surName = "Soylular";
    String email = "dsoylular22@ku.edu.tr";
    String password = "123456";
    
    String location = "TÜRKİYE";
    String dateOfBirth = "01.07.2003";

    return Scaffold(
      appBar: _appBarDesign(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 30,right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profil image kısmı
              const Center(
                child: CircleAvatar(
                  maxRadius: 100,
                  backgroundImage: AssetImage('lib/images/img_1.png'),
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
              NameTextWidget(
                name: "Location",
                nameTwo: location,
              ),
              NameTextWidget(
                  name: "Date of Birth",
                  nameTwo: dateOfBirth
              ),


              const SizedBox(height: 20),

              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );

  }
  AppBar _appBarDesign(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19,
            decorationStyle: TextDecorationStyle.solid,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          nameTwo,
          style: const TextStyle(fontSize: 18),
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(height: 15),
      ],
=======
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
>>>>>>> d3f5dc7ce397d22a9ce80c874a33af17089465aa
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




