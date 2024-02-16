import 'package:flutter/material.dart';

void main() {

  //Imageもウィジェットなので、他のウィジェットと組み合わせ使える
  final img = Image.asset(

    'images/sushi.png'
  );

  final con2 = Container(
    color: Colors.blue,
    width: 500,
    height: 400,
  );

  final con = Container(
    color: Colors.deepOrange,
    width: 200,
    height: 130,

    //コンテンナ内のchildは1つだけ
    //コンテナの中にコンテナを置くこともできる。
    child: con2,

    //コンテナ内のchildの位置を寄せる
    alignment: Alignment.centerLeft,

    //padding: コンテナ内に見えない壁を作る -> コンテナ内のchildはそれ以上膨らまなくなる
    //EdgeInsetsクラスを使う
    padding: EdgeInsets.fromLTRB(10, 20, 30, 40)
  );

  

  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
     con,
    ],
  );

  final row = Row(children: [col, col, col]);

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            col, col, col, // Adding the Column directly
            row, // Adding the Row that contains Columns
          ],
        ),
      ),
    ),
  );

  runApp(a);
}
