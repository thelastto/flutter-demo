import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("文本"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "It's ellipsis. " * 10,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              "It's scale",
              textScaleFactor: 1.5,
            ),
            Text(
              "Hello world",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()),
            ])),
            DefaultTextStyle(
              //1.设置文本默认样式
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("hello world"),
                  Text("I am Jack"),
                  Text(
                    "I am Jack",
                    style: TextStyle(
                        inherit: false, //2.不继承默认样式
                        color: Colors.grey),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
