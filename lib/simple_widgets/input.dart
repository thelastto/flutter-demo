import 'package:flutter/material.dart';
import 'package:flutter_demo/public_widgets/Wrapper.dart';

class InputRoute extends StatefulWidget {
  @override
  _InputRoute createState() => new _InputRoute();
}

class _InputRoute extends State<InputRoute> {
  TextEditingController _usernameController = TextEditingController();
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    //监听输入改变
    _usernameController.addListener(() {
      print(_usernameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrapper(
      title: '输入框',
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true, 
            controller: _usernameController,
            focusNode: focusNode1,//关联focusNode1
            decoration: InputDecoration(
                labelText: "input1"
            ),
          ),
          TextField(
            focusNode: focusNode2,//关联focusNode2
            decoration: InputDecoration(
                labelText: "input2"
            ),
          ),
          Builder(builder: (ctx) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    //将焦点从第一个TextField移到第二个TextField
                    // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                    // 这是第二种写法
                    if(null == focusScopeNode){
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                  },
                ),
                RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    // 当所有编辑框都失去焦点时键盘就会收起  
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                ),
              ],
            );
          },
          ),
        ],
      ),
    );
  }
}
