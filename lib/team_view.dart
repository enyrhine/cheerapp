import 'package:Cheerapp/model/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Team team = ModalRoute.of(context).settings.arguments;
    return CupertinoTabScaffold(
      // appBar: AppBar(
      //   title: Text(team.name),
      //   backgroundColor: team.color,
      // ),
      tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.people)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.stars)
            )
          ],
          //Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: <Widget>[
          //     IconButton(
          //       icon: Icon(Icons.people),
          //       color: Colors.white,
          //       onPressed: () {},
          //     ),
          //     IconButton(
          //       icon: Icon(Icons.home),
          //       color: Colors.white,
          //       onPressed: () {},
          //     ),
          //     IconButton(
          //       icon: Icon(Icons.stars),
          //       color: Colors.white,
          //       onPressed: () {},
          //     ),
          //   ],
          // )
          ),
          tabBuilder: (BuildContext context, int i) {
            return CupertinoPageScaffold(child: CupertinoTheme(data: CupertinoThemeData(), child: Center(child: Text('Moi $i!'))));
          },
      // body: Center(child: Text('höpöhöpö')),
    );
  }
}
