import 'package:adminpanel/Responsive.dart';
import 'package:adminpanel/Screens/DashBoardScreen.dart';
import 'package:adminpanel/Widgets/CustomDrawer.dart';
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
            if(Responsive.isDesktop(context))
            CustomDrawer(),
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

