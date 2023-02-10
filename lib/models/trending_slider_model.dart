import "package:equatable/equatable.dart";

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
});

  @override
  List<Object> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
      name: "The Pearl • 4.8✰",
      imageUrl: "https://imgur.com/8cNaJOT.jpg",
    ),
    Category(
      name: "Shops at Rivercenter • 3.5✰",
      imageUrl: "https://imgur.com/nrGuoU9.jpg",
    ),
    Category(
      name: "Student Coffee Shop • 4.7✰",
      imageUrl: "https://imgur.com/gSwiq3I.jpg",
    ),
    Category(
      name: "Tower of Americas • 3.2✰",
      imageUrl: "https://imgur.com/3JAEyAS.jpg",
    ),
  ];
}