import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConnectPage extends StatefulWidget {
  @override
  _ConnectPageState createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  static const platform = const MethodChannel('samples.flutter.io/bluetooth');
  String _message = '检查蓝牙状态中....';

  Future<Null> _getBatteryLevel() async {
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      print(result);
    } on PlatformException catch (e) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connect'),
      ),
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('蓝牙状态:'),
                Text(
                  _message,
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('打开蓝牙'),
                      onPressed: (){
                        _getBatteryLevel();
                      },
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('检测蓝牙状态'),
                      onPressed: (){

                      },
                    ),
                  ],
                ))
          ])),
    );
  }
}
