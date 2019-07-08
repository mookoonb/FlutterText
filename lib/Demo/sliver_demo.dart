import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  Widget build (BuildContext content){

    return Scaffold(
      body:  CustomScrollView(

        slivers: <Widget>[

        SliverAppBar(
          // title: Text('QFFFF'),
          pinned: true, 
          // floating: true,


          expandedHeight: 178.0,

          flexibleSpace:  FlexibleSpaceBar(
            title: Text('Do not care nothing'.toUpperCase(),

              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400,
              ),
            ),

            background:  Image.network('http://attachments.gfan.net.cn/forum/201501/22/2246523mw488648yfcmvxx.jpg',
              fit: BoxFit.cover,
            ),            
          ),

        ),
          SliverSafeArea(
            sliver:  SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGirdDemo(),
            ),
          ),  
        ],

      ),

    );
  }
}


class SliverGirdDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return  SliverGrid(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:  2,
                crossAxisSpacing:  8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.7,
              ),

              delegate: SliverChildBuilderDelegate(
                (BuildContext context,int index){
                  return Container(
                      child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                      ),
                  );
                },
                childCount: posts.length,
              ),


          );
  }
}