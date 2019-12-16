import 'package:Cheerapp/model/team.dart';
import 'package:Cheerapp/teams.dart';
import 'package:flutter/material.dart';

void main() => runApp(CheerApp());

class CheerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
      ),
      home: TeamsView(title: 'HAC CHEER APP', teams: [
        Team(name: 'Elsa', color: Colors.red),
        Team(name: 'Elsafant', color: Colors.orange),
        Team(name: 'Minior Elsa', color: Colors.pink),
      ]),
    );
  }
}


