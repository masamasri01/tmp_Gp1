// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ChildTile2 extends StatelessWidget {
  String name;
  String image;
  int index;

  ChildTile2({
    required this.index,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // CustomRadio(),
        ///////////////////////////////////////////////
        Container(
          padding: EdgeInsets.only(top: 12, bottom: 9, left: 16, right: 17),
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(
                color: (getcolor()), width: 2.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(
              Radius.circular(7),
            ),
            //   boxShadow: const [
            //     BoxShadow(
            //       color: Color(0x0a2c2738),
            //       offset: Offset(0, 4),
            //       blurRadius: 8,
            //     ),
            //   ],
          ),
          child: Column(
            children: [
              SizedBox(
                width: 0.7 * MediaQuery.of(context).size.width,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      child: Image.network(image),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
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
