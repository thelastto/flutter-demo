import 'package:flutter/material.dart';
import 'package:flutter_demo/public_widgets/Wrapper.dart';

class ProgressRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: '进度条',
      child: Center(
        child: Column(
          children: <Widget>[
            // 模糊进度条(会执行一个动画)
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),

            //进度条显示50%
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
            ),

            // 模糊进度条(会执行一个旋转动画)
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
            ),

            //进度条显示50%，会显示一个半圆
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
