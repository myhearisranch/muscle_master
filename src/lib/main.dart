import 'package:flutter/material.dart';

void main() {

  xxxx(){
    debugPrint('これから通信始めます');
    debugPrint('通信中です');
    debugPrint('通信が終わりました');
  }

  final button = ElevatedButton(

    //ボタンを押した時に動く関数を設定する
    onPressed: xxxx,

    //押せないボタンにする時
    //onPressed: null

    //ボタンの中に表示するウィジェットを設定する
    child: Text('押してみて'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
    ),

  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );
  runApp(a);
}