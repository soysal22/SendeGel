import 'package:appjamteam39/SettingsPage.dart';
import 'package:flutter/material.dart';

import 'EventPage.dart';
import 'HomePageFiles/HomePage.dart';
import 'ProfilePage.dart';

class HomePage extends StatefulWidget {
  final String argument;

  const HomePage({Key? key, required this.argument}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final tabs = [
      const EventWidget(text: "text"),
      const HomeWidget(text: "text"),
<<<<<<< HEAD
      const ProfilePage(text: "text"),
      // ProfilePage(name: "name", surName: "surName", gender: "gender", email: "email", password: "password"),
=======
       ProfilePage(name: "text", surName: '', gender: '', password: '', email: '',),
>>>>>>> d3f5dc7ce397d22a9ce80c874a33af17089465aa
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'SendeGel',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.purple, Colors.deepPurple],
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(
                  30), // You can adjust this value to change the shape
            ),
          ),
          centerTitle: false, // Center the title
          leading: IconButton(
            icon: const Icon(
              Icons.exit_to_app,
              size: 25, // Adjust the size as needed
              color: Colors.white, // Make the icon white
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                size: 25, // Adjust the size as needed
                color: Colors.white, // Make the icon white
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SettingsPage(geliControl: TextEditingController())),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        // child: Text(widget.argument),
        child: tabs[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Etkinlik Bul',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.purple,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
