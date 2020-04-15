import 'package:flutter/material.dart';

class RegistFrom extends StatefulWidget {
  Map arguments;
  RegistFrom({this.arguments});
  @override
  _RegistFromState createState() => _RegistFromState(arguments);
}

class _RegistFromState extends State<RegistFrom> {
  Map arguments;
  _RegistFromState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册"),
      ),
      body: Text("注册页面${arguments["name"]}"),
    );
  }
}