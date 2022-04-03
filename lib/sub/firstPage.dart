import 'package:flutter/material.dart';
import '../animalItem.dart';

class FirstApp extends StatelessWidget {
  final List<Animal>? list;
  FirstApp({Key? key, this.list}) : super(key: key); //list를 매개변수로 입력받는 생성자가 추가됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Center(
        child: ListView.builder(itemBuilder: (context, position) {
          return Card(//리스트뷰의 아이템은 Card로 만든다.

              );
        }),
      ),
    ));
  }
}
