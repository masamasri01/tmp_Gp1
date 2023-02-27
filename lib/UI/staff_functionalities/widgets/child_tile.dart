// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gp1/UI/staff_functionalities/widgets/radio_button.dart';

class ChildTile extends StatelessWidget {
  String name;
  String image;
  int index;
  ChildTile({
    required this.index,
    required this.name,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12, bottom: 9, left: 16, right: 17),
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(
            color: (getcolor()), width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      child: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      image,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: TextStyle(
                    color: getcolor(),
                    fontWeight: FontWeight.w900,
                    fontSize: 17),
              ),
              SizedBox(
                width: 110,
              ),
              // Checkbox(
              //   value: false,
              //   onChanged: ((value) {}),
              // )
            ],
          ),
          Container(height: 65, width: double.infinity, child: CustomRadio())
        ],
      ),
    );
  }

  getcolor() {
    int numm = (index + 1) % 6;
    if (numm == 1)
      return Colors.red;
    else if (numm == 5)
      return Colors.green;
    else if (numm == 3)
      return Colors.purple;
    else if (numm == 4)
      return Colors.pink;
    else if (numm == 2)
      return Colors.yellow;
    else if (numm == 0) return Colors.orange;
  }
}
