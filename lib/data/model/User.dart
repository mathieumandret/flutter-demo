class User {
  final String firstname;
  final String lastname;
  final String thumbURL;
  final String imageURL;
  final String email;

  User(
      {this.firstname,
      this.lastname,
      this.email,
      this.thumbURL,
      this.imageURL});

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
        email: json['email'] as String,
        firstname: json['name']['first'] as String,
        lastname: json['name']['last'] as String,
        thumbURL: json['picture']['thumbnail'] as String,
        imageURL: json['picture']['large'] as String);
  }

  String getFormattedName() =>
      '${_capitalize(firstname)} ${_capitalize(lastname)}';

  static String _capitalize(String str) =>
      '${str[0].toUpperCase()}${str.substring(1)}';
}
