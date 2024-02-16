import 'package:flutter/material.dart';

void main() {

  //コントローラー: テキストフィールドで入力された文字を格納する場所
  //別のウィジェットでその文字を使うようにできる。
  final controller = TextEditingController();

  final textField = TextField(
    decoration: InputDecoration(

      //テキストフィールドを線で囲む
      border: OutlineInputBorder(),

      //テキストフィールドにラベルを表示する
      labelText: 'あなたの名前',

      //テキストフィールド内に注意書を表示する
      hintText: 'カタカナで入力してください',

      //エラーの文字を表示する
      errorText: '文字が長すぎます',

    ),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: textField,
      ),
    ),
  );
  runApp(a);
}