import 'package:flutter/material.dart';

void main() {}

void test1() async {

  //stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();

  //stubからJSONを取り出す
  final json = await rootBundle.loadString('stub/level1.json');

  //JSONをJsonMapに変換する
  final map = jsonDecode(json);

  //fromJsonを使ってJsonMapをDartで使えるdataに変換する
  final data = Vegetable.fromJson(map);
}

//Dartで作ったデータをJSONデータにする
void test2() async {
  const data = Vegetable(
    name: 'キャベツ',
    color: 'みどり',
    season: '春と冬',
  );
  final map = data.toJson();
  final json = jsonEncode(map);
}

void test3() async {

  //stubを使えるようにする
  WidgetsFlutterBinding.ensureInitialized();

  //stubからJSONを取り出す
  final json = await rootBundle.loadString('stub/level2.json');

  //JSONをJsonMapに変換する
  final map = jsonDecode(json);

  //JsonMapをDartで使えるデータに変換する
  final data = Pack.fromJson(map);

}

void test4() async {
  //Dartで作ったデータをJSONに変換する

  final content = Vegetable(
    name: 'アボカド',
    color: '濃いみどり',
    season: '秋'
  );

  const data = Pack(
    size: '中',
    price: 800,
    content: content,  
  )

  //DartのデータをJsonMapに変換する
  final map = data.toJson();

  //JsonMapをjsonEncodeを使ってJSONに変換する
  final json = jsonEncode(map);
}

void test5() async {}

void test6() async {}

void test7() async {}

void test8() async {}

void test9() async {}

void test10() async {}