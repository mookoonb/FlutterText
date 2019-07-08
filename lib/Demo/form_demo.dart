import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(

        // data: Theme.of(context).copyWith(
        //     primaryColor:  Colors.black
        // ),

        data:  ThemeData(
          primaryColor:  Colors.pink
        ),
        
        child: Container(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFiledDemo(),
            ],
          ),
        ),
      ), 
      // body: ThemeDemo(),
    );
  }
}


class TextFiledDemo extends StatefulWidget {
  @override
  _TextFiledDemoState createState() => _TextFiledDemoState();
}

class _TextFiledDemoState extends State<TextFiledDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.arrow_drop_down),
          labelText: 'title',
          hintText: 'Enter the post title',
          // border: InputBorder.none
          // border: OutlineInputBorder()

          filled: true,
          fillColor: Colors.green
        ),
    );
  }
}




class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}

