import 'package:flutter/material.dart';


void main() => runApp(BottomMenu());

/*
  底部按钮
 */
class BottomMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }
}


class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _tabsState createState() => _tabsState();
}

class _tabsState extends State<Tabs> {

  var _stateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('flutter app'),
        ),
        body: Text('body'),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._stateIndex,
          onTap: (index){
            setState(() {
             this._stateIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('书架')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text('我的')
            ),
          ]
        ),
      );
  }
}