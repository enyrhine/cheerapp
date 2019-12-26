import 'package:Cheerapp/model/team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  PageController _teamPage = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    final Team team = ModalRoute.of(context).settings.arguments;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
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
                    color: Colors.white,
                    icon: Icon(Icons.people),
                    onPressed: () {
                      setState(() {
                        _teamPage.jumpToPage(0);
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.home),
                    onPressed: () {
                      setState(() {
                        _teamPage.jumpToPage(1);
                      });
                    },
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.stars),
                    onPressed: () {
                      setState(() {
                        _teamPage.jumpToPage(2);
                      });
                    },
                  )
                ],
              )),
          body: PageView(
            controller: _teamPage,
            onPageChanged: (int) {
              print('Page Changes to index $int');
            },
            children: <Widget>[Center(child: Text('1')), Center(child: Text('2')), Center(child: Text('3'))],
          ),
        ));
  }
}
