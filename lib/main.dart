import 'package:flutter/material.dart';
import 'package:flutter_demo/public_widgets/RouteButton.dart';
import 'package:flutter_demo/public_widgets/Section.dart';
import 'package:flutter_demo/route.dart';
import 'package:flutter_demo/simple_widgets/button.dart';
import 'package:flutter_demo/simple_widgets/image.dart';
import 'package:flutter_demo/simple_widgets/input.dart';
import 'package:flutter_demo/simple_widgets/state.dart';
import 'package:flutter_demo/simple_widgets/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //注册路由表
      routes: {
        "new_page": (context) => NewRoute(), //注册首页路由
        "/":(context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
        "tip2": (context){
          return TipRoute(text: ModalRoute.of(context).settings.arguments);
        },
        "text": (context) => TextWidget(),
        "state": (context) => StateWidget(),
        "button": (context) => ButtonWidget(),
        "image": (context) => ImageWidget(),
        "icon": (context) => IconWidget(),
        "input": (context) => FormExampletRoute()
      } ,
      //当调用Navigator.pushNamed(...)打开命名路由时，如果指定的路由名在路由表中已注册，则会调用路由表中的builder函数来生成路由组件；如果路由表中没有注册，才会调用onGenerateRoute来生成路由
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Section(
              title: "基础组件",
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RouteButton(
                      text: "文本",
                      name: "text"
                      ),
                    RouteButton(
                      text: "状态管理",
                      name: "state",
                    ),
                    RouteButton(
                      text: '按钮',
                      name: 'button'
                    ),
                    RouteButton(
                      text: '图片',
                      name: 'image'
                    ),
                    RouteButton(
                      text: '图标',
                      name: 'icon'
                    ),
                    RouteButton(
                      text: '输入框及表单',
                      name: 'input'
                    )
                  ],
                )
                
              ],
            )
          ],
        )
      )
    );
  }

  @override
  void didUpdateWidget(MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }
}
