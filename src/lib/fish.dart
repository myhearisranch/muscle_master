import 'package:freezed_annotation/freezed_annotation.dart';

//fish: ファイル名
part 'fish.freezed.dart';

@freezed
class Fish with _$Fish {
  const factory Fish({

  //名前
  required String name,

  //大きさ
  required int size,

  //値段
  required int price,

  }) = _Fish;
}

// エラー1
// コマンドを実行しても、fish.freezed.dartが作成されない

// 原因:
// import 'package:freezed_anntotation/freezed_annotation.dart';
// と書いていた。(import文を間違えていた。)

// 解決策:
// 下記のように修正
// import 'package:freezed_annotation/freezed_annotation.dart';
