import 'package:flutter/material.dart';

class StaticNavigate extends StatefulWidget {
  final String content;

  const StaticNavigate({Key key, this.content}) : super(key: key);

  @override
  _StaticNavigateState createState() => _StaticNavigateState();
}

class _StaticNavigateState extends State<StaticNavigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("静态路由"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("静态跳转传递静态参数"),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("动态跳转传递动态参数"),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("传递参数: ${widget.content}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
