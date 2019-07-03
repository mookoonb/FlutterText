import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{

final TextStyle _textStyle = TextStyle(
  fontSize: 16.0,
);

final String _author = '李白';
final String _title = '将进酒';


  Widget build(BuildContext context){
    return Text('《 $_title 》---$_author 明月几时有？把酒问青天。不知天上宫阙，今夕是何年。我欲乘风归去，又恐琼楼玉宇，高处不胜寒。起舞弄清影，何似在人间？(何似 一作：何时；又恐 一作：惟 / 唯恐),转朱阁，低绮户，照无眠。不应有恨，何事长向别时圆？人有悲欢离合，月有阴晴圆缺，此事古难全。但愿人长久，千里共婵娟。(长向 一作：偏向)',
    textAlign: TextAlign.center,
    );
  }
}