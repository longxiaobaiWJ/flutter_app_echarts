import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MaterialButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: new Text('点我'),
              onPressed: () {
                print('AOS');
              },
            ),
          ],
        ),
      ),
    );
  }
}
