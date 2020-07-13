import 'package:flutter/material.dart';
import 'package:test2/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('E-food'),
        leading: Icon(Icons.fastfood),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.SignOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
        //backgroundColor: Colors.blue,
      ),
      body: Text('Home'),
    );
  }
}
