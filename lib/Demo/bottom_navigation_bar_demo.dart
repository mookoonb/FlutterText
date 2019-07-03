import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget{

  State<StatefulWidget> createState(){
    return _BottomNavigationBarDemoState();
  }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo>{


  int _currentIndex = 0;

 void _onTapHandler (int index){
      setState(() {
        _currentIndex = index;
      });  
 }

  Widget build(BuildContext content){
    return  BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            fixedColor: Colors.red,
            currentIndex: _currentIndex,
            onTap: _onTapHandler,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.exit_to_app),
                title: Text('Item1')

              ),
                BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text('Item2')

              ),
                BottomNavigationBarItem(
                icon: Icon(Icons.query_builder),
                title: Text('Item3')

              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.wallpaper),
                title: Text('Item4')

              ),
               BottomNavigationBarItem(
                icon: Icon(Icons.map),
                title: Text('Item5')

              ),
            ],
          );
  }
}