import 'package:flutter/material.dart';
import 'package:flutter_app/pages/frist.dart';
import 'package:flutter_app/pages/registFrom.dart';



void main() => runApp(MyApp());

/*
 * 命名路由传参
 */
class MyApp extends StatelessWidget {
  final routes = {
    "/frist": (context)=>FristPage(),
    "/regist": (context,{arguments})=>RegistFrom(arguments:arguments)

  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterButton(),
      onGenerateRoute: (RouteSettings settings){
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if(pageContentBuilder != null){
          if(settings.arguments != null){
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context,arguments:settings.arguments)
            );
            return route;
          }else{
            final Route router = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context),
            );
            return router;
          }
        }
      }
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
                Navigator.pushNamed(context,"/regist",arguments: {"name":"张三"});
              }
            )
          ],
        ),
      );
  }
}