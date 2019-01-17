import 'package:flutter/material.dart';
import 'package:users/data/model/User.dart';

class UserItem extends StatelessWidget {
  final User user;
  final Function onClick;

  UserItem({this.user, this.onClick});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(user.getFormattedName()),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(user.thumbURL),
      ),
      onTap: onClick,
    );
  }
}
