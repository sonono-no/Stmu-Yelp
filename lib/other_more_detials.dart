import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'models/other_location_list.dart';


class LocationPage extends StatelessWidget {

  final Location location;

  const LocationPage({
    Key? key,
    required this.location,
  }) : super(key: key);

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
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              //CarouselWithDotsPage(imgList),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  location.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          image: NetworkImage(location.locationImgUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 400,
                      width: double.infinity,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "${location.description} \n\n${location.hours}\n\n Address: ${location.address}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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