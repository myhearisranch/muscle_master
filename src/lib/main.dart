import 'package:flutter/material.dart';

//go_routerを使うのに必要なパッケージをインポートする
import 'package:go_router/go_router.dart';

import 'page_a.dart'; // page_a.dartへのファイルパスを修正
import 'page_b.dart'; // page_b.dartへのファイルパスを修正
import 'page_c.dart'; // page_c.dartへのファイルパスを修正

//画面の進む、戻るを実装する  => go_routerを使う

//go_routerの使い方:
//パスと画面の組み合わせを決める

// 例: /a - PageA
//     /b - PageB


main() {
  final app = App();
  runApp(app);
}

//アプリ全体
class App extends StatelessWidget {
  App({super.key});

  final router = GoRouter(
    //initialLocation: アプリが始まった時のパスを設定する
    initialLocation: '/a',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        // /aのパスならPageAという設定をしている
        path: '/a',
        builder: (context, state) => const PageA(),
      ),
      GoRoute(
        path: '/b',
        builder: (context, state) => const PageB(),
      ),
      GoRoute(
        path: '/c',
        builder: (context, state) => const PageC(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      //go_routerの決まった書き方
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}




