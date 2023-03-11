import 'package:flutter/material.dart';

class Person {
  final int id;
  final String name;
  final int age;
  final String imageUrl;
  final String description;

  Person(
      {required this.id,
      required this.name,
      required this.age,
      required this.imageUrl,
      required this.description});
}
