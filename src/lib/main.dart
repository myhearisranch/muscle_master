import 'package:flutter/material.dart';

//別のファイルのコードを使う
import 'banana_counter.dart'; 

void main() {

  final b = BananaCounter(

    //BananaCounterのnumberという変数を決める
    //ウィジェットを使う部分で変数の中身を決める
    number: 888,

  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: b
      ),
    ),
  );
  runApp(a);
}