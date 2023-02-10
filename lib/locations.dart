class Location {
  final String username;
  final String email;
  final String urlAvatar;

  const Location({
    required this.username,
    required this.email,
    required this.urlAvatar,
});

  static Location fromJson(json) => Location(
    username: json["username"],
    email: json["email"],
    urlAvatar: json["urlAvatar"],
  );
}