import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> imgList = [
  "https://i.imgur.com/y82CxOc.jpg",
  "https://i.imgur.com/gqf1W2T.jpg",
  "https://i.imgur.com/XVeNI1b.jpg",
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/stmuyelplogo.png',
          height: 120.0,
          width: 250.0,
        ),
        centerTitle: true,
      ),
      body: SafeArea(child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Location Categories",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.blue.shade800,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home Page",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favorite Spots",
          ),
          GButton(
            icon: Icons.person,
            text: "My Profile",
          ),
        ],
      ),
    );
  }
}