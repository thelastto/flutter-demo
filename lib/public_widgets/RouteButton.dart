
import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({Key key, this.text, this.name}) : super(key: key);
  final String text;
  final String name;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: () {
        // 打开`TipRoute`，并等待返回结果
        Navigator.pushNamed(context, name);
      },
      child: Text(text),
    );
  }
}