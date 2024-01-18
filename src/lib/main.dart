import 'package:flutter/material.dart';

//main関数
void main(){

  //バナナという文字をbという変数に入れる
  const b = 'バナナ';

  //bからTextというウィジェットを作る
  const t = Text(b);

  //TextからCenterというウィジェットを作る
  //Center: ウィジェットを中心に置くためのウィジェット
  const c = Center(child: t);

  //CenterからScaffoldというウィジェットを作る
  //1つの画面を作るためのウィジェット
  const s = Scaffold(body: c);

  //ScaffoldからMaterialAppというウィジェットを作る
  //アプリを作るためのウィジェット
  const a = MaterialApp(home: s);

  //アプリを動かす
  runApp(a);

}

//この書き方だと変数が一杯出てきて周りくどい
//const t = Text('バナナ');

//  const c = Center(
//              child: Text('バナナ')
//            );

//  const s = Scaffold(
//              body: Center(
//                child: Text('バナナ')
//              ),
//            );


//  const a = MaterialApp(
//              home: Scaffold(
//                body: Center(
//                  child: Text('バナナ')
//                ),
//              ),
//            );



