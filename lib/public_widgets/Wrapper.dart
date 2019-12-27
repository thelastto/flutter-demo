import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key, this.title, this.child}) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: child
    );
  }
}
