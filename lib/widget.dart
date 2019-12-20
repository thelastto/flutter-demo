import 'package:flutter/material.dart';

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础组件"),
      ),
      body: Column(
          children: <Widget>[
        
          ],
        )
      );
  }
}

class Section extends StatelessWidget {

  const Section({Key key, this.title, this.children}) : super(key: key);
  
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}