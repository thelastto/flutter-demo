import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  const Section({Key key, this.title, this.children}) : super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "$title",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Column(
            children: children,
          )
        ],
      ),
    );
  }
}
