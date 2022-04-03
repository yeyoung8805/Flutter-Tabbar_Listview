import 'package:flutter/material.dart';

class Animal {
  String? imagePath;
  String? animalName;
  String? kind;
  bool? flyExist = false;

  Animal(
      {required this.animalName, //required : 함수 호출할때 꼭 전달해야 하는 값이라는 뜻.
      required this.kind,
      required this.imagePath,
      this.flyExist});
}
