import 'package:flutter/material.dart';
import 'package:flutter_app/pages/frist.dart';

void main() => runApp(MyApp());
/*
  命名路由
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterButton(),
      routes: {
        "/from" : (context)=> FristPage()
      },
    );
  }
}

class RegisterButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('命名路由'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('register'),
              onPressed: (){
                Navigator.pushNamed(context,"/from");
              }
            )
          ],
        ),
      );
  }
}