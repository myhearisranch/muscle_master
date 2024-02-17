import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

//
// 画面 A
//
class PageA extends StatelessWidget {
  const PageA({super.key});

  //進むボタンを押した時
  push(BuildContext context){
    //画面Bへ進む
    //context.push: 次の画面に進む
    context.push('/b');
  }

  @override
  Widget build(BuildContext context) {
    // 画面の上に表示するバー
    final appBar = AppBar(
      backgroundColor: Colors.red,
      title: const Text('画面 A'),
    );

    // 進むボタン
    final pushButton = ElevatedButton(
      onPressed: () => push(context),
      // MEMO: primary は古くなったので backgroundColor へ変更しました
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text('進む >'),
    );

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            pushButton,
          ],
        ),
      ),
    );
  }
}