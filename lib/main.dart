import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage1(),
    );
  }
}

class MyPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPage 1')),
      body: Center(
        child: RaisedButton(
          child: Text('Go to MyPage 2'),
          onPressed: () {
            Navigator.push(
              context,
              new MaterialPageRoute<Null>(
                settings: const RouteSettings(name: "/my-page-2"),
                builder: (BuildContext context) => MyPage2(/* 必要なパラメータがあればここで渡す */),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyPage 2')),
      body: Center(
        child: RaisedButton(
          child: Text('Back to MyPage 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}