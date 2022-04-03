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
  final nameController = TextEditingController();
  int? _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          TextField(
            controller: nameController,
            keyboardType: TextInputType.text,
            maxLines: 1,
          ),
          Row(
            children: <Widget>[
              Radio(value: 0, groupValue: _radioValue, onChanged: _radioChange),
              Text('양서류'),
              Radio(value: 1, groupValue: _radioValue, onChanged: _radioChange),
              Text('파충류'),
              Radio(value: 2, groupValue: _radioValue, onChanged: _radioChange),
              Text('포유류'),
            ],
          )
        ]),
      ),
    ));
  }

  _radioChange(int? value) {
    setState(() {
      _radioValue = value;
    });
  }
}
