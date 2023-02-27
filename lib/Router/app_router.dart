import 'package:flutter/material.dart';
import 'package:gp1/Colors/colors.dart';
import 'package:gp1/UI/staff_functionalities/announcements.dart';
import 'package:gp1/UI/staff_functionalities/meals.dart';
import 'package:gp1/UI/widgets/custum_button.dart';

class AppRouter {
  AppRouter._();
  static AppRouter appRouter = AppRouter._();
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  showCustomDialoug(String title, String content) {
    showDialog(
        context: navigatorKey.currentContext!,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                  onPressed: () {
                    navigatorKey.currentState!.pop();
                  },
                  child: Text('Ok'))
            ],
          );
        });
  }

  showLoadingDialoug() {
    showDialog(
      barrierDismissible: false,
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              Container(
                  margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
            ],
          ),
        );
      },
    );
  }

  hideDialoug() {
    navigatorKey.currentState!.pop();
  }

  goToWidgetAndReplace(Widget widget) {
    navigatorKey.currentState!
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  goToWidget(Widget widget) {
    navigatorKey.currentState!.push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  showAnnounceDialoug() {
    showDialog(
      //  barrierDismissible: false,
      context: navigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
              height: 235,
              width: 280,
              child: Column(
                children: [
                  Announcements(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      elevatedButon(
                          text: 'Cancel',
                          onPressed: () {
                            goToWidget(Meals());
                          }),
                    ],
                  ),
                ],
              )),
          actions: [
            TextButton(
                child: elevatedButon(
                  text: 'g',
                  onPressed: () {
                    navigatorKey.currentState!.pop();
                  },
                ),
                onPressed: () {
                  navigatorKey.currentState!.pop();
                }),
            elevatedButon(
                text: 'Announce',
                onPressed: () {
                  func;
                }),
          ],
        );
      },
    );
  }

  func() {
    navigatorKey.currentState!.pop();
    hideDialoug();
  }
}
