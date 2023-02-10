class Location {
  final String name;
  final String address;
  final String hours;
  final String description;
  final String locationImgUrl;

  const Location({
    required this.name,
    required this.address,
    required this.hours,
    required this.description,
    required this.locationImgUrl,
  });

}

List<Location> locations = [
  const Location(
    name: "Taquitos West Ave.",
    address: "2818 West Ave, San Antonio, TX 78201",
    hours: "Mon 10:00 AM - 12:00 AM (Next day) \nTue10:00 AM - 12:00 AM (Next day) \nWed10:00 AM - 12:00 AM (Next day) \nThu10:00 AM - 12:00 AM (Next day) \nFri10:00 AM - 4:00 AM (Next day) \nSat10:00 AM - 2:00 AM (Next day) \nSun 10:00 AM - 12:00 AM (Next day)",
    description: "Mexican, counter-service pit stop turning out an array of tacos in easygoing surroundings.",
    locationImgUrl: "https://imgur.com/0nb1iM9.png",
  ),
  const Location(
    name: "Mad Mack\'s Burgers",
    address: "2933 Roosevelt Ave San Antonio, TX 78214",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/sWsOfji.png",
  ),
  const Location(
    name: "Piranha Izakaya",
    address: "260 E Basse Rd Ste 101 San Antonio, TX 78209",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/ZW4hXoo.png",
  ),
  const Location(
    name: "Sweet Paris Crêperie & Café",
    address: "15900 La Cantera Pkwy Ste 19160 San Antonio, TX 78256",
    hours: "Mon 9:00 AM - 8:00 PM \nTue9:00 AM - 8:00 PM\nWed9:00 AM - 8:00 PM\nThu9:00 AM - 8:00 PM\nFri9:00 AM - 10:00 PM\nSat9:00 AM - 10:00 PM\nSun9:00 AM - 8:00 PM",
    description: "Sweet Paris was first opened in Rice Village in 2012. Within 10 years, Sweet Paris has turned into one of the best fast casual hotspots in various parts of Houston, Austin, San Antonio, College Station, and Mexico. \n\nEvery day - and every bite - is an opportunity to savor all that’s good in the world. Although crêpes are known for being French, we have introduced hints of other cultures into this versatile dish that can be enjoyed any time of the day!",
    locationImgUrl: "https://imgur.com/Ic40rqV.png",
  ),
  const Location(
    name: "Grimaldi's Pizzeria",
    address: "330 E Basse Rd Ste 101 San Antonio, TX 78209",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/nEZQHuF.png",
  ),
];