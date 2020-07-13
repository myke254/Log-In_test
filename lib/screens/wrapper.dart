import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/models/user.dart';
import 'package:test2/screens/authenticate/authenticate.dart';
import 'package:test2/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    //return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
