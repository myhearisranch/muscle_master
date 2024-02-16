import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  // バナナの数
  final int number;

  // required this.number : numberという数を使えるようにした
  const BananaCounter({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //コードはここに書く(書き方は今までと同じ)

    //必要なウィジェット
    //バナナの画像を表示するウィジェット
    //数字を表示するウィジェット
    //ROWのウィジェットで2つを横に並べる
    //コンテナウィジェットで背景に色を塗ったり、大きさを整える

    // バナナの画像
    final banana = Image.asset('images/banana.png');

    // 数字の部分
    final text = Text(
      '$number',
      style: const TextStyle(
        color: Colors.yellow,
        fontSize: 50,
      ),
    ); 

    // 横に並べる
    final row = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        banana,
        text,
      ],
    );

    // 色と大きさを決める
    final con = Container(
      color: Colors.black87,
      child: row,
    );

    return con;
  }
}



//MyWidgetの部分を自分の作りたいwidgetの名前に変える
// class MyWidget extends StatelessWidget{
//   const MyWidget({key? key})  : super(key: key);

//   @override
//   Widget build(BuildContext context){

//   }
// }