import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:lingdang/model/post.dart';

class PageViewDemo extends StatelessWidget{

  List<Widget> _buildTitles (int lenght){
    return List.generate(lenght, (int index){
        return Container(
          color:  Colors.red[100],
          alignment:  Alignment(0.0, 0.0),
          child: Text('Demo')
        );
    });
  }

  Widget build(BuildContext context){
    return  GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 3,
      mainAxisSpacing: 3,
      // scrollDirection: Axis.horizontal,
      children: _buildTitles(100),
      
      //  <Widget>[
      //   Container(
      //     color: Colors.red,
      //     alignment: Alignment(0.0, 0.0),
      //     child: Text(
      //       'item'
      //     ),
      //   ),
      //    Container(
      //     color: Colors.red,
      //     alignment: Alignment(0.0, 0.0),
      //     child: Text(
      //       'item'
      //     ),
      //   ),
      //    Container(
      //     color: Colors.red,
      //     alignment: Alignment(0.0, 0.0),
      //     child: Text(
      //       'item'
      //     ),
      //   ),
      //    Container(
      //     color: Colors.red,
      //     alignment: Alignment(0.0, 0.0),
      //     child: Text(
      //       'item'
      //     ),
      //   ),
      //    Container(
      //     color: Colors.red,
      //     alignment: Alignment(0.0, 0.0),
      //     child: Text(
      //       'item'
      //     ),
      //   )
      // ],
    );
  }
}


class pageImgViewDemo extends StatelessWidget {

 Widget _pageItemBuilder (BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox(
          child:  Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context){
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder:_pageItemBuilder,
    );
  }

}



class PageSubViewDemo extends StatelessWidget {
  Widget build(BuildContext context){
    return PageView(
      // pageSnapping: false,

      scrollDirection: Axis.vertical,

      onPageChanged: (currentpage) => debugPrint('page:$currentpage'),

      controller: PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 1
      ),


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