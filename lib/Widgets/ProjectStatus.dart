import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants.dart';
import 'CustomChart.dart';


class ProjectStatus extends StatelessWidget {
  const ProjectStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
          height: Get.height * 0.8,
          width: Get.width * 0.5,
          decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.all(Radius.circular(14))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Projects Status",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                CustomChart(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: primaryColor.withOpacity(0.15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mobile_friendly_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile App Projects",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Flutter",
                                style:
                                Theme.of(context).textTheme.caption,
                              ),
                            ],
                          )),
                      Text("Total: 230")
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: primaryColor.withOpacity(0.15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.web_sharp,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Website Projects",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "Flutter",
                                style:
                                Theme.of(context).textTheme.caption,
                              ),
                            ],
                          )),
                      Text("Total:100")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
