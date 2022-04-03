import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondApp extends StatelessWidget {
  final List<Animal>? list;
  SecondApp({Key? key, this.list})
      : super(key: key); //list를 매개변수로 입력받는 생성자가 추가됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Text('두번째 페이지'),
      ),
    ));
  }
}
