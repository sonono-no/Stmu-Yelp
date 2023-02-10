import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget japanesegardenCard() => Card(
  margin: const EdgeInsets.all(20),
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: const AssetImage('assets/japanesegarden.jpg'),
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
            height: 150,
            fit: BoxFit.cover,
          ),
          const Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              'Japanese Garden',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(16).copyWith(bottom: 0),
        child: const Text(
          '3853 N St Mary\'s St, San Antonio, TX 78212\nHours: 7AM - 5PM\n4.8 ✰✰✰✰✰ (12K Reviews)',
          style: TextStyle(fontSize: 16),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue.shade800, // foreground
            ),
            onPressed: () { },
            child: const Text('Details'),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue.shade800, // foreground
            ),
            onPressed: () { },
            child: const Text('Directions'),
          )
        ],
      )
    ],
  ),
);

class EntertainmentPage extends StatelessWidget {
  const EntertainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue.shade800),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'assets/stmuyelplogo.png',
          height: 120.0,
          width: 250.0,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //CarouselWithDotsPage(imgList),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "Entertainment Locations",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: Colors.blue.shade800,
        gap: 8,
        tabs: const [
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