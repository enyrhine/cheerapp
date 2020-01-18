import 'package:flutter/material.dart';

class TeamPeopleView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TeamPeopleViewState();
  }
}

class _TeamPeopleViewState extends State<TeamPeopleView>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TabBar(
        tabs: <Widget>[Tab(text: '1'), Tab(text: '2')],
        controller: controller,
        labelColor: Colors.black38,
      ),
      Expanded(
          child: TabBarView(
        children: <Widget>[
          Center(child: Text('1moi')),
          Center(child: Text('2moi'))
        ],
        controller: controller,
        physics: NeverScrollableScrollPhysics(),
      ))
    ]);
  }
}
