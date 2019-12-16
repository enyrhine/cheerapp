import 'package:Cheerapp/model/team.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Team team;

  const Avatar({Key key, @required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [team.color, team.color.withOpacity(0.7)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(48)),
      child: Center(
          child: Text(
        team.name[0],
        style: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
      )),
    );
  }
}
