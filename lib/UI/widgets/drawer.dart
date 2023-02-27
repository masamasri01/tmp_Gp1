import 'package:flutter/material.dart';
import 'package:gp1/Colors/colors.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: MyColors.color1,
    child: Column(
      children: [
        Expanded(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: MyColors.color2,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: MyColors.color4,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Masa Hassan")
                  ],
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        )
      ],
    ),
  );
}
