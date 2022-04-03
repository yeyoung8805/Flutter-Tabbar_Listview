import 'package:flutter/material.dart';
import '../animalItem.dart';

class SecondApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SecondApp();
  final List<Animal>? list;
  SecondApp({Key? key, this.list})
      : super(key: key); //list를 매개변수로 입력받는 생성자가 추가됨
}

class _SecondApp extends State<SecondApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[]),
      ),
    ));
  }
}
