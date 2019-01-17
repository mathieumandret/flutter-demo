import 'package:flutter/material.dart';
import 'package:users/data/repositories/UserRepository.dart';
import 'package:users/pages/UserList/UserList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Users',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Users'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _repo = UserRepository();
  final String title;

  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: UserList(
          repo: _repo,
        ),
      ),
    );
  }
}
