import 'package:flutter/material.dart';
import '../model/post.dart';

class listViewDemo extends StatelessWidget{
   Widget _listItemBuilder(BuildContext content,int index){
    return Container(
      color:  Colors.red,
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            style: Theme.of(content).textTheme.title,
          ),
          SizedBox(height: 16.0),

        ],
      ),
    );
  }
  
  Widget build(BuildContext context){
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder
        );
  }
}
 