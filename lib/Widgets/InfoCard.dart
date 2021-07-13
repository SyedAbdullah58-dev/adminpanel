import 'package:adminpanel/Model/CloudStorage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants.dart';
import 'ProgressLine.dart';

class InfoCard extends StatelessWidget {
  final CloudStorage info;

  const InfoCard({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(

        child: Column(
          children: [
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: info.color.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: Get.height * 0.04,
                      width: Get.width * 0.03,
                      child: info.icon,
                    )),
                Expanded(child: Container()),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Text(
              info.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            ProgressLine(
              percentage: info.percentage,
              color: info.color,
            ),
            size16(),
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Row(children: [
              Text("Files : ${info.percentage}",style: TextStyle(color: Colors.white54),),
              Expanded(child: Container()),
              Text( "${info.percentage/100} GB",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),

            ],),
          )
          
          ],
        ),
        decoration: BoxDecoration(
            color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
