import 'package:flutter/material.dart';
import 'package:users/data/model/User.dart';
import 'package:users/data/repositories/UserRepository.dart';
import 'package:users/pages/UserDetails/UserDetails.dart';
import 'package:users/pages/UserList/UserItem.dart';

class UserList extends StatefulWidget {
  final UserRepository repo;

  UserList({this.repo});

  @override
  State<StatefulWidget> createState() => UserListState(repo: repo);
}

class UserListState extends State<UserList> {
  final UserRepository repo;
  List<User> _users;

  UserListState({this.repo});

  @override
  void initState() {
    super.initState();
    repo.getAll().then((users) {
      setState(() => _users = users);
    });
  }

  Function _goToUser(int index) => () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetails(_users[index]),
          ),
        );
      };

  Widget _buildItem(BuildContext ctx, int i) =>
      UserItem(user: _users[i], onClick: _goToUser(i));

  @override
  Widget build(BuildContext context) {
    return _users != null
        ? ListView.builder(
            itemCount: _users.length,
            itemBuilder: _buildItem,
          )
        : CircularProgressIndicator();
  }
}
