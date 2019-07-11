import 'package:flutter/material.dart';

import 'package:todos/utils/colors.dart';

class TagModel {
  int id;
  String name;
  Color color;

  TagModel({this.id, this.name, this.color});

  TagModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    color = HexColor(json['color']);
  }
}
