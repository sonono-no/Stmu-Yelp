import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '/models/trending_slider_model.dart';
import 'entertainment_category_page.dart';
import 'food_category_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


Widget foodButtonWdiget(BuildContext context) => Card(
  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24)
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Ink.image(
        image: AssetImage('assets/button_0.png'),
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        child: InkWell (
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => food_category_page()),
            );
          },
        ),
        height: 220,
        fit: BoxFit.cover,
      ),
      Text(
        "Food",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 50,
            ),
          ],
        ),
      ),
    ],
  ),
);


Widget entertainmentButtonWidget(BuildContext context) => Card(
  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Ink.image(
        image: AssetImage('assets/button_1.png'),
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        child: InkWell (
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => entertainment_category_page()),
            );
          },
        ),
        height: 220,
        fit: BoxFit.cover,
      ),
      Text(
        "Entertainment",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 50,
            ),
          ],
        ),
      ),
    ],
  ),
);


Widget studyButtonWidget(BuildContext context) => Card(
  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Ink.image(
        image: AssetImage('assets/button_2.png'),
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        child: InkWell (
          onTap: () {},
        ),
        height: 220,
        fit: BoxFit.cover,
      ),
      Text(
        "Study Areas",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 50,
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget otherButtonWidget(BuildContext context) => Card(
  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
  ),
  child: Stack(
    alignment: Alignment.center,
    children: [
      Ink.image(
        image: AssetImage('assets/button_3.png'),
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        child: InkWell (
          onTap: () {},
        ),
        height: 220,
        fit: BoxFit.cover,
      ),
      Text(
        "Other",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 45,
          shadows: [
            Shadow(
              color: Colors.black,
              offset: Offset(4, 4),
              blurRadius: 50,
            ),
          ],
        ),
      ),
    ],
  ),
);


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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //CarouselWithDotsPage(imgList),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Trending Locations",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.7,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  enableInfiniteScroll: true,
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 8),
                ),
                items: Category.categories.map((category) => HeroCarouselCard(category: category)).toList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Looking For?",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              foodButtonWdiget(context),
              entertainmentButtonWidget(context),
              studyButtonWidget(context),
              otherButtonWidget(context),
            ],
          ),
        ),
      ),
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

class HeroCarouselCard extends StatelessWidget {
  final Category category;

  const HeroCarouselCard({
    required this.category,
});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 20,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Stack(
          children: <Widget>[
            Image.network(category.imageUrl, fit: BoxFit.cover, width: 1000.0),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(
                  category.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}