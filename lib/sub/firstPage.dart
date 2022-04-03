import 'package:flutter/material.dart';
import '../animalItem.dart';

class FirstApp extends StatelessWidget {
  final List<Animal>? list;
  FirstApp({Key? key, this.list}) : super(key: key); //list를 매개변수로 입력받는 생성자가 추가됨

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: ListView.builder(
            itemBuilder: (context, position) {
              //position 은 아이템의 위치(인덱스)를 의미
              return Card(
                //리스트뷰의 아이템은 Card로 만든다.
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      list![position].imagePath!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                    Text(list![position].animalName!)
                  ],
                ),
              );
            },
            itemCount: list!.length), //아이템 개수만큼만 스크롤할 수 있게 제한
      ),
    ));
  }
}
