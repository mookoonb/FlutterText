import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class ViewDemo extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://pic37.nipic.com/20140113/8800276_184927469000_2.png'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover

        )
      ),



      // color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.map,size: 32.0,color: Colors.blue),
            // color: Color.fromRGBO(2, 68, 255, 1.0),
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(8.0),
            width: 80,
            height: 80,

            decoration: BoxDecoration(
              color: Colors.red,
              border:  Border.all(
                  color: Colors.green,
                  width: 2,
                  style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),

              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(64.0),
              //   bottomLeft: Radius.circular(12.0)
              // )

              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),
                  color: Colors.pink,
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                )
              ],

              shape: BoxShape.circle,

              // gradient: RadialGradient( // 镜像渐变
              //   colors:[
              //     Colors.green,
              //     Colors.purple
              //   ]
              // )
              gradient: LinearGradient( // 线性渐变
                colors:[
                  Colors.green,
                  Colors.purple
                ]
              )

            ),

          )
        ],
      ),
    );



  }
}



// class ViewDemo extends StatelessWidget {

//   Widget build(BuildContext context){
//     return RichText(
//       text: TextSpan(
//         text: 'ninghao',
//         style: TextStyle(
//           color: Colors.deepOrange,
//           fontSize: 34.0,
//           fontStyle: FontStyle.italic,
//           fontWeight: FontWeight.w100
//         ),
//         children: [
//           TextSpan(
//             text: '.net',
//             style: TextStyle(
//               fontSize: 17.0,
//               color: Colors.orange
//             )
//           )
//         ]
//       ),
//     );
//   }
// }



// class ViewDemo extends StatelessWidget{

// final TextStyle _textStyle = TextStyle(
//   fontSize: 16.0,
// );

// final String _author = '李白';
// final String _title = '将进酒';

//   Widget build(BuildContext context){
//     return Text('《 $_title 》---$_author 明月几时有？把酒问青天。不知天上宫阙，今夕是何年。我欲乘风归去，又恐琼楼玉宇，高处不胜寒。起舞弄清影，何似在人间？(何似 一作：何时；又恐 一作：惟 / 唯恐),转朱阁，低绮户，照无眠。不应有恨，何事长向别时圆？人有悲欢离合，月有阴晴圆缺，此事古难全。但愿人长久，千里共婵娟。(长向 一作：偏向)',
//     textAlign: TextAlign.center,
//     style: _textStyle,
//     );
//   }
// }