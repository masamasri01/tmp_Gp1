import 'package:flutter/material.dart';
import 'package:gp1/Colors/colors.dart';

AppBar ab(String title) {
  return AppBar(
    title: Text(title),
    backgroundColor: MyColors.color1,
    centerTitle: true,
    bottomOpacity: 0.4,
  );
}
