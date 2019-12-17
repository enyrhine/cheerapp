
import 'package:Cheerapp/team_view.dart';
import 'package:Cheerapp/teams.dart';
import 'package:flutter/material.dart';

void main() => runApp(CheerApp());

class CheerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {'/': (context) => TeamsView(), '/team': (context) => TeamView()},
      initialRoute: '/',
    );
  }
}
