import 'package:flutter/material.dart';
import 'package:users/data/model/User.dart';

class UserDetails extends StatelessWidget {
  final User user;

  UserDetails(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(user.getFormattedName()),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Image(image: NetworkImage(user.imageURL))],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.email),
                ),
                Text(user.email)
              ]),
            ),
          ],
        ));
  }
}
