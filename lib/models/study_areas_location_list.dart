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
    name: "Merit Coffee Shop",
    address: "7338 Louis Pasteur Dr. Suite #204 San Antonio, TX 78229",
    hours: "10:00AM - 6:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/7C0kiwN.jpg",
  ),
  const Location(
    name: "Press Coffee Shop",
    address: "4035 Broadway, San Antonio, TX 78209",
    hours: "10:00AM - 6:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/FbMEOY6.jpg",
  ),
  const Location(
    name: "Central Library",
    address: "600 Soledad St, San Antonio, TX 78205",
    hours: "10:00AM - 6:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/kVR9cET.jpg",
  ),
  const Location(
    name: "Flying Saucer Draught Emporium",
    address: "11255 Huebner Rd #212, San Antonio, TX 78230",
    hours: "11:00AM - 11:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/EwZJPXN.jpg",
  ),
  const Location(
    name: "Cody Library",
    address: "11441 Vance Jackson Rd, San Antonio, TX 78230",
    hours: "10:00AM - 6:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/5ocz0h5.jpg",
  ),
];
