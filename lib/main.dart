import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());
 

class App extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),      
      
      theme:ThemeData(
          primarySwatch: Colors.red
       )
    );
  } 
}

class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext content,int index){
    return Container(
      color:  Colors.red,
      margin:  EdgeInsets.all(8.0),
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


  Widget build(BuildContext content){
    return Scaffold(
        appBar: AppBar(
          title: Text('QF'),
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder
        )
    );
  }
}



class Hello extends StatelessWidget {
  Widget build(BuildContext context){
    return Center(
      child: Text(
        'hello flutter',
        textDirection: TextDirection.ltr,
        style:  TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
    );
  }
}