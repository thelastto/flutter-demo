import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {

  ImageBox({Key key, this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset('$path', 
      width: 50.0,
      height: 50.0
    );
  }
}