import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gp1/Colors/colors.dart';
import 'package:gp1/UI/widgets/custom_appBar.dart';
import 'package:gp1/UI/widgets/custum_button.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  TextEditingController controller = TextEditingController();
  String announcement = "vr";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              focusColor: MyColors.color4,
              border: OutlineInputBorder(),
              labelText: 'Add Announcement',
              hintText: 'Enter text',
            ),
            controller: controller,
            maxLines: 5,
            onChanged: (v) {
              setState(() {
                announcement = v;
              });
            },
          ),
        )
      ],
    );
  }
}
