import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  // アプリ
  const app = MaterialApp(home: Example());

  // アプリ全体をプロバイダースコープというもので囲む必要がある
  const scope = ProviderScope(child: app);
  runApp(scope);

}

//　プロバイダー
final nicknameProvider = StateProvider<String>(
  (ref){

    //変化するデータ
    return "ルビードッグ";
  }
);

//riverpodの仕組み

// 1 変化させたいデータをProviderという壁で守る
// 2 画面は特別なConsumerWidgetを使う
// 3 ConsumerWidgetを使うことでrefというものが手に入る
// 4 refとは、Providerの鍵のようなもの => refを使うで画面の方からProviderの中にあるデータを監視できる
// 5 Notifier: Providerの中のデータを変更する => refを使ってデータを監視していた画面にデータの変更が反映される

// 画面
class Example extends ConsumerWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   
   //データを見張る(ref)
   final nickname = ref.watch(nicknameProvider);

    return Scaffold(
      // ニックネーム 1
      appBar: AppBar(title: Text(nickname)),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ニックネーム 2
            Text(nickname),
            // ボタン A
            ElevatedButton(onPressed: () => tapA(ref), child: const Text('A')),
            // ボタン B
            ElevatedButton(onPressed: () => tapB(ref), child: const Text('B')),
            // ボタン C
            ElevatedButton(onPressed: () => tapC(ref), child: const Text('C')),
            // ニックネーム 3
            Text(nickname),
          ],
        ),
      ),
    );
  }

  //notifieでデータを編集する
  tapA(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーキャット';
  }

  tapB(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーバード';
  }

  tapC(WidgetRef ref) {
    final notifier = ref.read(nicknameProvider.notifier);
    notifier.state = 'ルビーフィッシュ';
  }
}