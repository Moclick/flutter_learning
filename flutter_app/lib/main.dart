import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_app/pages/frist.dart';
import 'package:flutter_app/pages/registFrom.dart';



void main() => runApp(MyApp());
/*
动画
 */
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class  MyHome extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>_MyHomeState();

}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin{

  Animation<double> animation;
  AnimationController controller;

  double value = 0;
  //trailingExtent : 100 ,spring : SpringDescription(mass: 1,stiffness:2 ,demping:1));

  var sp = GravitySimulation(100, 10, 100, -100);
  @override
  void initState() {

    controller = AnimationController(
      value: this.value,
      lowerBound: 0,
      upperBound: 1,
      duration: Duration(milliseconds:  3000),
      vsync: this
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.fastOutSlowIn
    );
    controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: new Builder(builder: (BuildContext context){
        return AnimationLogo(animation: animation);
      }),
    );
  }
}


class AnimationLogo extends AnimatedWidget{
  AnimationLogo({Key key,Animation<double> animation}) : super(key:key,listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    var topAni = Tween<double>(begin: 0,end: 300).animate(animation);
    var colorAni = ColorTween(begin: Colors.red,end: Colors.blue).animate(animation);
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: FlutterLogo(size: 30),
            top: topAni.value,
            left: 100,
          )
        ],
      ),
      color: colorAni.value,
    );

  }
  
}