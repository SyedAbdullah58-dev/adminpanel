import 'package:adminpanel/Model/CloudStorage.dart';
import 'package:adminpanel/Responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants.dart';
import 'InfoCard.dart';
import 'ProjectStatus.dart';
import 'buildDataRow.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: Get.height * 0.8,
                width: Get.width * 0.5,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Row(
                        children: [
                          Text("Our Projects"),
                          Expanded(child: SizedBox()),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text("Add New"))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Responsive(mobile:customGridBuilder(),tablet: customGridBuilder(),desktop: customGridBuilder() ,)
                    ,
                    size16(),
                    SingleChildScrollView(
                      child: Container(
                        color: secondaryColor,
                        height: (Get.height * 0.8) * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Recent Projects ",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              padding: EdgeInsets.all(defaultPadding),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(

                                  horizontalMargin: 0,
                                  columns: [


                                DataColumn(label: Text("Project")),
                                DataColumn(label: Text("Date")),
                                DataColumn(label: Text("Budget")),
                              ], rows: List.generate(DemoFiles.length, (index) => buildDataRow(info: DemoFiles[index]))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        SizedBox(
          height: defaultPadding,
        ),
        ProjectStatus(),
      ],
    );
  }


}

class customGridBuilder extends StatelessWidget {
  const customGridBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 4,

        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1,
            crossAxisSpacing: defaultPadding),
        itemBuilder: (context, index) => InfoCard(
              info: DemoFiles[index],
            ));
  }
}
