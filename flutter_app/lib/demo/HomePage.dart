import 'package:flutter/material.dart';
import '../pages/frist.dart';
import '../pages/registFrom.dart';

/*
  基本路由
 */
class HomePage extends StatelessWidget{
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
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  int _stateIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('flutter app'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("跳转frist"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FristPage(),
                  )
                );
              }
            ),
            RaisedButton(
              child: Text("跳转Register"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RegistFrom(),
                  )
                );
              }
            )
          ]
        ),
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