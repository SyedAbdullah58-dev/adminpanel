import 'package:adminpanel/Screens/DashBoardScreen.dart';
import 'package:adminpanel/Widgets/HeaderHeadings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Container(
                      height: Get.height * 0.2,
                      width: Get.width  * 0.1,
                      child:
                          DrawerHeader(child: Image.asset("assets/techorra.jpg")),
                      decoration: BoxDecoration(),
                    ),
Divider(),
                   HeaderHeadings(title: "Dashboard", icon: Icon(Icons.dashboard),press: (){}),
                   HeaderHeadings(title: "Transaction", icon: Icon(Icons.monetization_on_sharp),press: (){}),
                   HeaderHeadings(title: "Task", icon: Icon(Icons.thumb_up_alt_sharp),press: (){}),
                   HeaderHeadings(title: "Documents", icon: Icon(Icons.contact_page),press: (){}),
                   HeaderHeadings(title: "Employees", icon: Icon(Icons.person),press: (){}),
                   HeaderHeadings(title: "Projects", icon: Icon(Icons.pages_sharp),press: (){}),
                   HeaderHeadings(title: "Projects", icon: Icon(Icons.pages_sharp),press: (){}),
                   HeaderHeadings(title: "Projects", icon: Icon(Icons.pages_sharp),press: (){}),
                  ],
                ),
              ),
            )),
            Expanded(
                flex: 4,
                child: DashBoardScreen()
            )
          ],
        ),
      ),
    );
  }
}
