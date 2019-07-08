import 'package:flutter/material.dart';

class NavigationDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child:  Text('Home'),
              onPressed: null,
            ),
            FlatButton(
              child:  Text('Other'),
              onPressed: (){

                Navigator.pushNamed(context, '/about');

                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => Page(pageTitle: 'Other',)
                //   ),
                // );
              },
            )
          ],
        ),
      ),
    );
  }
}


class Page extends StatelessWidget {

final String pageTitle;

Page({
  this.pageTitle
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title:  Text(pageTitle),
        elevation: 0.0,
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}