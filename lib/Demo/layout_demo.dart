import 'package:flutter/material.dart';

class layoutDemo extends StatelessWidget {

  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        IconBadge(Icons.memory,size: 80.0,)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {

  final IconData icon;
  final double size;
  IconBadge (this.icon,{
    this.size = 32
  });

  Widget build(BuildContext context){
    return Container(
      child: Icon(icon,size: size,color: Colors.white,),
      width: size+60,
      height: size+60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }

}