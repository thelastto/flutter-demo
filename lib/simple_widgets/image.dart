import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("图片"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Image>[
                Image(image: AssetImage("images/fighting.png"), width: 50.0),
                Image.network(
                  "https://avatars0.githubusercontent.com/u/25566082?s=40&v=4",
                  width: 50.0,
                )
              ],
            ),
            Column(
              children: <Image>[
                Image(
                  image: AssetImage("images/fighting.png"),
                  height: 50.0,
                  width: 100.0,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  height: 50,
                  width: 50.0,
                  fit: BoxFit.contain,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fitWidth,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fitHeight,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.scaleDown,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  height: 50.0,
                  width: 100.0,
                  fit: BoxFit.none,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: AssetImage("images/fighting.png"),
                  width: 100.0,
                  height: 200.0,
                  repeat: ImageRepeat.repeatY,
                )
              ].map((e) {
                return Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 100,
                        child: e,
                      ),
                    ),
                    Text(e.fit.toString())
                  ],
                );
              }).toList(),
            )
          ],
        ));
  }
}

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("图标"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.red,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.black,
            ),
          ],
        ));
  }
}
