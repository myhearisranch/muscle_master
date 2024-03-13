import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

//どのくらい進んだかを表す パーセント
final percentProvider = StateProvider((ref){
  //最初は0%からスタート
  return 0.00;
});

// ホーム画面
class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //パーセント
    final percent = ref.watch(percentProvider);

    //丸型のインジケーター
    final circular = CircularPercentIndicator(
      //変化していく値を指定
      percent: percent,
      //丸型インジケーターの全体の色
      backgroundColor: Colors.yellow,
      //値が変化していくことで範囲が変わる色
      progressColor: Colors.green,
      //円の大きさ
      radius: 60,
      //円の太さ
      lineWidth: 20,
      //インジケーターの真ん中に文字を置く
      center: Text('${percent * 100}%'),


      //インジケーターに伸びる動きを付けられる
      animation: true,
      //インジケーターの動く速さを変える
      animationDuration: 200,
      //最初の部分から動きを見せるかがをtrueかfalseで決める
      animateFromLastPercent: true,
    );

    //棒型のインジケーター
    final linear = LinearPercentIndicator(
      percent: percent,
      backgroundColor: Colors.yellow,
      progressColor: Colors.green,
      alignment: MainAxisAlignment.center,
      lineHeight: 20,
      width: 300,
    );

    //ボタン
   final button = ElevatedButton(
      onPressed: () => onPressed(ref),
      child: const Text('スタート'),
    );


    //縦に並べるカラム
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        circular,
        linear,
        button,
      ],
    );

    return Scaffold(
      body: Center(
      child:column,
      ),
    );
  }

  //ボタンを押した時の関数
    void onPressed(WidgetRef ref) async {
      //1秒待つ
      await Future.delayed(const Duration(seconds: 1));
      //20%
      ref.read(percentProvider.notifier).state = 0.20;
      //1秒待つ
      await Future.delayed(const Duration(seconds: 1));
      //40%
      ref.read(percentProvider.notifier).state = 0.40;
      //1秒待つ
      await Future.delayed(const Duration(seconds: 1));
      //60%
      ref.read(percentProvider.notifier).state = 0.60;
      //1秒待つ
      await Future.delayed(const Duration(seconds: 1));
      //80%
      ref.read(percentProvider.notifier).state = 0.80;
      //1秒待つ
      await Future.delayed(const Duration(seconds: 1));
      //100%
      ref.read(percentProvider.notifier).state = 1.00;
    }
}


// エラー1:

// lib/main.dart:26:22: Error: The method 'CircularPercentIndicator' isn't defined for the class 'Home'.
//  - 'Home' is from 'package:workspace/main.dart' ('lib/main.dart').
// Try correcting the name to the name of an existing method, or defining a method named 'CircularPercentIndicator'.
//     final circular = CircularPercentIndicator(
//                      ^^^^^^^^^^^^^^^^^^^^^^^^
// lib/main.dart:40:20: Error: The method 'LinearPercentIndicator' isn't defined for the class 'Home'.
//  - 'Home' is from 'package:workspace/main.dart' ('lib/main.dart').
// Try correcting the name to the name of an existing method, or defining a method named 'LinearPercentIndicator'.
//     final linear = LinearPercentIndicator(
//                    ^^^^^^^^^^^^^^^^^^^^^^

//原因:
//main.dartにimport 'package:percent_indicator/percent_indicator.dart';を書いていなかった