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
    name: "Seoul Asian Market & Cafe",
    address: "1005 Rittiman Rd #101, San Antonio, TX 78218",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "desc",
    locationImgUrl: "https://imgur.com/dLmM25Y.jpg",
  ),
  const Location(
    name: "Mi Amigo Food Mart",
    address: "2916 Culebra Rd, San Antonio, TX 78228",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://i.imgur.com/eZZyYXc.jpg",
  ),
];
