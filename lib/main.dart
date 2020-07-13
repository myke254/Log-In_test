import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/models/user.dart';
//import 'package:test2/screens/authenticate/authenticate.dart';
import 'package:test2/screens/wrapper.dart';
import 'package:test2/services/auth.dart';

void main() => runApp(TestCards());

class TestCards extends StatefulWidget {
  @override
  _TestCardsState createState() => _TestCardsState();
}

class _TestCardsState extends State<TestCards> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
