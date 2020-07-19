import 'package:flutter/material.dart';
import 'package:flutter_app_echarts/navigation/static.dart';

class NormalNavigate extends StatefulWidget {
  @override
  _NormalNavigateState createState() => _NormalNavigateState();
}

class _NormalNavigateState extends State<NormalNavigate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("普通路由"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              RaisedButton(
                child: Text("静态跳转至静态路由"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/static");
                },
              ),
              RaisedButton(
                child: Text("动态跳转至静态路由"),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new StaticNavigate(
                                content: "Const Params",
                              )));
                },
              ),
              RaisedButton(
                child: Text("自定义动画跳转"),
                onPressed: () {
                  Navigator.of(context).push(new PageRouteBuilder(
                      pageBuilder: (context, _, __) {
                    return new StaticNavigate(content: "自定义动画传递参数");
                  }, transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                    return new FadeTransition(
                        opacity: animation,
                        child: new SlideTransition(
                          position: new Tween<Offset>(
                            begin: const Offset(0, 1.0),
                            // const Offset(1.0, 0.0)----默认动画
                            end: const Offset(0.0, 0.0),
                          ).animate(animation),
                          child: child,
                        ));
                  }));
                },
              ),
              RaisedButton(child: Text("路由跳转返回操作"), onPressed: () {
                Navigator.of(context).pop("Hello OK");
              })
            ],
          ),
        ),
      ),
    );
  }
}
