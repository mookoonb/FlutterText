import 'package:flutter/material.dart';

class layoutDemo extends StatelessWidget {

  Widget build(BuildContext context){
    return Container(
        child: Column(
          // 主轴
          mainAxisAlignment: MainAxisAlignment.center, 

          // 交叉轴
          // crossAxisAlignment: CrossAxisAlignment.center,

           children: <Widget>[
             SizedBox(
               width: 200,
               height: 300,
               child: Container(
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(3, 54, 255, 1.0),
                   borderRadius: BorderRadius.circular(9.0)
                 ),
                 child: Icon(Icons.palette,color: Colors.white,size: 32),
               ),
             ),
SizedBox(
  height: 32,
),
              SizedBox(
               width: 50,
               height: 50,
               child: Container(
                 decoration: BoxDecoration(
                   color: Color.fromRGBO(3, 54, 255, 1.0),
                   borderRadius: BorderRadius.circular(9.0)
                 ),
                 child: Icon(Icons.palette,color: Colors.white,size: 32),
               ),
             ),
           ],
        ),
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