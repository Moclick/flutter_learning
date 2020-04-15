import 'package:flutter/material.dart';
import 'file:///D:/dev-works/as-works/flutter_app/flutter_app/lib/demo/BottomMenu.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
           backgroundColor: Color.fromARGB(0, 0, 0, 0),
           centerTitle: true,
           title: Text("超级云眼")
           ),
        body: BottomMenu(),
        
      ),
    ) ;
  }
}


/*
 * StatelessWidget 无状态组件
 */
class HomeConter extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello",
        textDirection: TextDirection.ltr,  
        style: TextStyle(
          color: Colors.red
          //color: Color.fromARGB(200, 300, 20, 2)
        )
      )
    );
  }
}