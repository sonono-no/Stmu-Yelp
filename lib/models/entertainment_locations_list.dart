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
    name: "Japanese Garden",
    address: "2818 West Ave, San Antonio, TX 78201",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "desc",
    locationImgUrl: "https://imgur.com/X6RuFTE.png",
  ),
  const Location(
    name: "The Pearl",
    address: "303 Pearl Pkwy Unit 300 San Antonio, TX 78215",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/ldqbjqO.png",
  ),
  const Location(
    name: "Six Flags",
    address: "17000 W I-10, San Antonio, TX 78257",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/ZN94x2p.png",
  ),
  const Location(
    name: "Tower of Americas",
    address: "739 E César E. Chávez Blvd, San Antonio, TX 78205",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/7dRtYmd.png",
  ),
  const Location(
    name: "Natural Bridge Caverns",
    address: "Natural Bridge Caverns, 26495 Natural Bridge Caverns Rd, San Antonio, TX 78266",
    hours: "8:00AM - 5:00PM (Not Real)",
    description: "somedescription here",
    locationImgUrl: "https://imgur.com/khgAhy7.png",
  ),
];
