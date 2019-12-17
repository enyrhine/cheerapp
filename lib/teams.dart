import 'package:Cheerapp/model/team.dart';
import 'package:Cheerapp/widgets/avatar.dart';
import 'package:flutter/material.dart';

class TeamsView extends StatefulWidget {
  TeamsView({Key key}) : super(key: key);

  final String title = 'HAC CHEER APP';
  final List<Team> teams = [
    Team(name: 'Elsa', color: Colors.red),
    Team(name: 'Elsafant', color: Colors.orange),
    Team(name: 'Minior Elsa', color: Colors.pink),
  ];

  @override
  _TeamsViewState createState() => _TeamsViewState();
}

class _TeamsViewState extends State<TeamsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xffff8674),
      ),
      body: ListView.separated(
        itemCount: widget.teams.length,
        separatorBuilder: (context, i) {
          return SizedBox(
            height: 0,
          );
        },
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/team', arguments: widget.teams[i]),
              onHorizontalDragEnd: (e) => Navigator.of(context).pushNamed('/team', arguments: widget.teams[i]),
              child: Card(
                  elevation: 2.2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(children: [
                      Container(
                          width: 56,
                          height: 56,
                          child: Avatar(team: widget.teams[i])),
                      SizedBox(
                        width: 16,
                      ),
                      Text(widget.teams[i].name)
                    ]),
                  )),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Click! =)');
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Color(0xffff8674),
      ),
    );
  }
}
