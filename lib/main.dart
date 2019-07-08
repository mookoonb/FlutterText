import 'package:flutter/material.dart';
import 'Demo/bottom_navigation_bar_demo.dart';
import 'Demo/listViewDemo.dart';
import 'Demo/bascid_demo.dart';
import 'Demo/layout_demo.dart';
import './Demo/page_View_Demo.dart';
import './Demo/navigation_demo.dart';

import 'Demo/sliver_demo.dart';


void main() => runApp(App());
 
class App extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigationDemo(),      
      initialRoute: '/',

      routes: {
        '/':(context) => NavigationDemo(),
        '/about':(context) =>Page(pageTitle: 'about')
      },
      theme:ThemeData(
          // primarySwatch: Colors.red,
          // highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          // splashColor: Colors.green[80]
       )
    );
  } 
}

class Home extends StatelessWidget {
  Widget build(BuildContext content){
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor:  Colors.green[100],
          appBar: AppBar(
         
          title: Text('QF'),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: ()=> debugPrint('on search'),
          ),
             IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'more',
            onPressed: ()=> debugPrint('on search')
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black38,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity)),
              Tab(icon: Icon(Icons.local_atm)),
              Tab(icon: Icon(Icons.local_cafe)),
              Tab(icon: Icon(Icons.offline_pin)),
            ],
          ),
        ),
            body: TabBarView(
              children: <Widget>[
                listViewDemo(),
                ViewDemo(),
               layoutDemo(), 
               SliverDemo()
              ],
            ),
          drawer: Drawer(
            child: ListView(
                padding:  EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text('wanghao'),
                    accountEmail: Text('wanghao@nighao.net'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage('http://cdn.duitang.com/uploads/item/201410/16/20141016202155_5ycRZ.thumb.700_0.jpeg'),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow[200],
                      image: DecorationImage(
                        image: NetworkImage('http://yun.wotz.cn/xinyunpic/11166/154406433272959.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.red[400].withOpacity(0.5),BlendMode.hardLight)
                      )
                    ),
                  ),
                  DrawerHeader(
                    child: Text('header'.toUpperCase()),
                    decoration: BoxDecoration(
                      color: Colors.grey[100]
                    ),
                  ),
                  ListTile(
                    trailing: Icon(Icons.message,color: Colors.red,size: 22),
                    title:  Text('Message',textAlign: TextAlign.left),
                    onTap: ()=> Navigator.pop(content)
                  ),
                   ListTile(
                    trailing: Icon(Icons.library_books,color: Colors.red,size: 22),
                    title:  Text('Like',textAlign: TextAlign.left),
                    onTap: ()=> Navigator.pop(content)
                  ),
                   ListTile(
                    trailing: Icon(Icons.settings,color: Colors.red,size: 22),
                    title:  Text('Setting',textAlign: TextAlign.left),
                    onTap: ()=> Navigator.pop(content)
                  )
                ],
            ),
          ),

     
          bottomNavigationBar: BottomNavigationBarDemo()

            // drawer:  Container (
            //   color: Colors.white,
            //   padding:  EdgeInsets.all(8.0),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: <Widget>[
            //       Text('this is drawer')
            //     ],
            //   ),
            // ),
            
    ),
    );
  }
}


