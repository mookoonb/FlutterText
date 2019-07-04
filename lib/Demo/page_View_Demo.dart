import 'package:flutter/material.dart';

class PageViewDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.blue,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'One'
          ),
        ),
         Container(
          color: Colors.red,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'two'
          ),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'three'
          ),
        )
      ],
    );
  }
}