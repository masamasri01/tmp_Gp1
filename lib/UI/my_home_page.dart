import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gp1/Colors/colors.dart';
import 'package:gp1/Router/app_router.dart';
import 'package:gp1/UI/staff_functionalities/accident.dart';
import 'package:gp1/UI/staff_functionalities/activities.dart';
import 'package:gp1/UI/staff_functionalities/announcements.dart';
import 'package:gp1/UI/staff_functionalities/attendance.dart';
import 'package:gp1/UI/staff_functionalities/chat.dart';
import 'package:gp1/UI/staff_functionalities/meals.dart';
import 'package:gp1/UI/staff_functionalities/med.dart';
import 'package:gp1/UI/staff_functionalities/naps.dart';
import 'package:gp1/UI/widgets/custom_appBar.dart';
import 'package:gp1/UI/widgets/drawer.dart';
import 'package:gp1/UI/widgets/gridtile.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ab('Teacher View'),
      drawer: drawer(),
      body: GridView.count(crossAxisCount: 3, children: [
        gridTile(
            icon_: Icon(Icons.food_bank_outlined),
            onPressed: routMeals,
            title: 'Meals'),
        gridTile(
            icon_: Icon(Icons.bedroom_parent_outlined),
            onPressed: routNaps,
            title: 'Naps'),
        gridTile(
            icon_: Icon(Icons.bedroom_baby_outlined),
            onPressed: routAct,
            title: 'Activities'),
        gridTile(
            icon_: Icon(Icons.announcement_outlined),
            onPressed: routAnn,
            title: 'Announce'),
        gridTile(
            icon_: Icon(Icons.medication_liquid_sharp),
            onPressed: routMed,
            title: 'Medicine'),
        gridTile(
            icon_: Icon(Icons.post_add), onPressed: routMeals, title: 'Posts'),
        gridTile(
            icon_: Icon(Icons.table_view),
            onPressed: routAtt,
            title: 'Attendance'),
        gridTile(
            icon_: Icon(Icons.medical_services_outlined),
            onPressed: routAcc,
            title: 'Accindent'),
        gridTile(
            icon_: Icon(Icons.chat_outlined),
            onPressed: routChat,
            title: 'Chat'),
      ]),
    );
  }

  routMeals() {
    AppRouter.appRouter.goToWidget(Meals());
  }

  void routNaps() {
    AppRouter.appRouter.goToWidget(Naps());
  }

  void routAct() {
    AppRouter.appRouter.goToWidget(Activities());
  }

  void routChat() {
    AppRouter.appRouter.goToWidget(Chat());
  }

  void routAcc() {
    AppRouter.appRouter.goToWidget(Accident());
  }

  void routAnn() {
    // AppRouter.appRouter.goToWidget(Announcements());
    AppRouter.appRouter.showAnnounceDialoug();
  }

  void routAtt() {
    //  AppRouter.appRouter.goToWidget(Attendance());
  }

  void routMed() {
    AppRouter.appRouter.goToWidget(Medicine());
  }
}
