import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gp1/Colors/colors.dart';
import 'package:gp1/Router/app_router.dart';
import 'package:gp1/UI/staff_functionalities/meals.dart';

class gridTile extends StatelessWidget {
  Icon icon_;
  final VoidCallback onPressed;
  String title;
  gridTile({required this.icon_, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(10),
      height: 25,
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          border: Border.all(
              color: MyColors.color3, width: 2.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: MyColors.color2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridTile(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: MyColors.white),
            child: IconButton(
                color: MyColors.color3,
                icon: icon_,
                iconSize: 25,
                onPressed: onPressed),
          )),
          Text(
            title,
            style: TextStyle(
                fontSize: 17,
                color: MyColors.color3,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
