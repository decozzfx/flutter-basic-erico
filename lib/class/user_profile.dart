import 'package:flutter/material.dart';

// Example of DOC Comment
/// Class UserProfile digunakan untuk menmpikan profile user
class UserProfile extends StatelessWidget {
  /// [name] is name from user with String type
  String name;
  String role;
  String photo;

  /// * [name] *is* `required`,
  ///
  /// * [role] is **required**,
  ///
  /// * [photo] is required
  ///
  /// `EXAMPLE OF USAGE`
  /// ```
  ///name: 'John Doe',
  ///role: 'Software Engineer',
  ///photo:
  ///'https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png');
  /// ```
  UserProfile({required this.name, required this.role, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: NetworkImage(photo),
          fit: BoxFit.cover,
          width: 200,
          height: 200,
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          role,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
