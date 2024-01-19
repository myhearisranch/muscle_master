import 'package:flutter/material.dart';

void main() {
  // Columnウィジェット: ウィジェット同士を縦に並べるためのウィジェット
  // その並んでいるウィジェットをチルドレンと呼ぶ。

  final col = Column(
    // mainAxisAlignment: childrenを真ん中に寄せたり、上に寄せたりする(縦方向の設定)
    // start: 上に寄せる
    // center: 真ん中に寄せる
    // end: 下に寄せる
    // spaceEvenly: 上にスペースを空けて均等に並べる
    // spaceBetween: スペースを空けて均等に並べるが、両端のスペースはない
    // spaceAround: 両端のスペースは小さく均等に並べる
    mainAxisAlignment: MainAxisAlignment.center,

    // MainAxisSize.min: Column, Rowウィジェット内の余計な部分を除く
    // => childrenに合わせる、childrenを直接動かすような形にする
    mainAxisSize: MainAxisSize.min,

    // CrossAxisAlignment 横方向の設定
    // start: 左寄せ
    // end: 右寄せ
    // center: 中央寄せ
    // stretch: 横に伸ばす

    crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      Text('レモン'),
      Text('リンゴ'),
      Text('ブドウ'),
    ],
  );

  runApp(MaterialApp(home: Scaffold(body: col)));

  //Rowの中にColumnを入れることもできる
  final row = Row(children: [
    col, col, col
  ])

  final a = MaterialApp(
    home: Scaffold(
      // カラムウィジェットをセンターに置いている
      // カラムウィジェットにあるchildrenを真ん中にしている訳ではない
      body: Center(
        children: [col, col, col],
      ),
    ),
  );
  runApp(a);
}

// const:
// const はコンパイル時に評価され、定数式で初期化された変数に使用される。
// 定数式はコンパイル時に既知の値でなければなりません。例えば、数値や文字列リテラル、定数変数の演算などが含まれます。
// const で宣言された変数は実行時には再評価されず、コンパイル時に確定された値が代入されます。

// final:
// final は実行時に初期化され、その後に値が変更されない変数に使用されます。
// final で宣言された変数は宣言時かコンストラクタ内で初期化されなければなりません。
// 初期化後は変更できませんが、実行時に評価されるため、実行時に初めて値がわかる計算やメソッド呼び出しを含む初期化が可能です。

// 簡潔に言えば、const はコンパイル時定数であり、final は実行時定数です。どちらを使うかは、変数の性質や使用ケースに依存します。const は一般的にリテラルや既知の定数式で使用され、final は実行時に初めて評価できる値で使用されます。









