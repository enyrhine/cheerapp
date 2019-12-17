import 'package:Cheerapp/model/team.dart';
import 'package:flutter/material.dart';

class TeamView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Team team = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(team.name),
        backgroundColor: team.color,
      ),
      bottomNavigationBar: BottomAppBar(
          color: team.color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.people),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.stars),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          )),
      body: Center(child: Text('höpöhöpö')),
    );
  }
}
