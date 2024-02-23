import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'page_a.dart';
import 'page_b.dart';
import 'page_c.dart';

// // プロバイダー
// final indexProvider = StateProvider((ref){
//   //変化させたいデータ
//   //スタートのインデックスとなる 0はindexの番号
//   return 0;
// },);

// class Root extends ConsumerWidget{
//   const Root({super.key})

//   @override
//   Widget build(BuildContext context, WidgetRef ref){

//     //右側のProviderというのがとれて、左側にindexとしてゲットできる。
//     final index = ref.watch(indexProvider);

//     //アイテムたち(ナビゲーションバーにあるアイコンと名前をセットにしたもの)
//     //BottomNavigationBarItem: アイテム専用のウィジェット
//     //使い方
//     // BottomNavigationBarItem(
//     //   icon: アイコン
//     //   label: 文字
//     // )

//     const items = [

//       BottomNavigationBarItem(
//         icon: Icon(Icons.person),
//         label: 'アイテムA'
//       ),

//       BottomNavigationBarItem(
//         icon: Icon(Icons.home),
//         label: 'アイテムB'
//       ),

//       BottomNavigationBarItem(
//         icon: Icon(Icons.settings),
//         label: 'アイテムC'
//       ),

//     ];

//     //itemsを使って、ナビゲーションバー全体を作成している
//     final bar = BottomNavigationBar(

//       //使うitemを決める
//       items: items,
//       //ナビゲーションバーの背景の色を決める
//       backgroundColor: Colors.red,
//       //押されたアイテムの色を決める
//       selectedItemColor: Colors.white,
//       //押されたアイテム以外のアイテムの色を決める
//       unselectedItemColor: Colors.black,
//       currentIndex: index,

//       //タップされた時にindexを変更するための状態管理のコード
//       onTap: (index) {
//         ref.read(indexProvider.notifier).state = index;
//       },

//     );

//     //上の画面全体を一つのリストに入れておく
//     final pages = [
//       PageA(),
//       PageB(),
//       PageC(),
//     ];

//     return Scaffold(
//       body: pages[index],
//       bottomNavigationBar: bar
//     );

//     return Container();
//   }
// }


main() {
  // アプリ
  const app = MaterialApp(home: Root());

  // プロバイダースコープでアプリを囲む
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// プロバイダー
final indexProvider = StateProvider((ref) {
  // 変化するデータ 0, 1, 2...
  return 0;
});

// 画面全体
class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // インデックス
    final index = ref.watch(indexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'アイテムA',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'アイテムB',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'アイテムC',
      ),
    ];

    // 下のバー
    final bar = BottomNavigationBar(
      items: items, // アイテムたち
      backgroundColor: Colors.red, // バーの色
      selectedItemColor: Colors.white, // 選ばれたアイテムの色
      unselectedItemColor: Colors.black, // 選ばれていないアイテムの色
      currentIndex: index, // インデックス
      onTap: (index) {
        // タップされたとき インデックスを変更する
        ref.read(indexProvider.notifier).state = index;
      },
    );

    // 画面たち
    const pages = [
      PageA(),
      PageB(),
      PageC(),
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }
}


