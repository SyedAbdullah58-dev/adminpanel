import 'package:adminpanel/Model/CloudStorage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

DataRow buildDataRow({required CloudStorage info}) {


  return DataRow(cells: [
    DataCell(
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: info.color.withOpacity(0.9),
              borderRadius: BorderRadius.circular(10),
            ),
            height: Get.height * 0.04,
            width: Get.width * 0.03,
            child: info.icon,
          )
        ],
      ),
    ),
    DataCell(Text("${DateTime.now()}")),
    DataCell(Text("\$ ${info.percentage}000")),
  ]);
}