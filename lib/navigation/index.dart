import 'package:flutter/material.dart';
import 'package:flutter_app_echarts/navigation/normal.dart';

class IndexNavigate extends StatefulWidget {
  @override
  _IndexNavigateState createState() => _IndexNavigateState();
}

class _IndexNavigateState extends State<IndexNavigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航首页"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("跳转至普通路由"),
                onPressed: () {
                  Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new NormalNavigate()))
                      .then((value) => {
                        print(" 这里的方法在页面返回时回调，获取参数值：$value")
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
