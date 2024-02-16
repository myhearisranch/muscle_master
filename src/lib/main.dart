import 'package:flutter/material.dart';

void main() {

  //Imageもウィジェットなので、他のウィジェットと組み合わせ使える
  final img = Image.asset(

    'images/sushi.png'
  );
  final col = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      // Image.asset('images/sushi.png'), 

      img, img, img


      //インターネットを通じて画像を表示する
      // Image.network(
      //   'https://flutter-image-network.web.app/inu.jpeg'
      // ),

      //補足:
      //画像を送り合うことはそんなにない。
      //画像は別の専用のサーバーに保管してあり、(AWS Amazon S3というサービスが使われる。)
      //画像を見たい人がそこに見にいくイメージ


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
