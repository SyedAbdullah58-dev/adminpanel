
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProgressLine extends StatelessWidget {
  final Color color;
  final int percentage;
  const ProgressLine({Key? key, required this.color, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.01,
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        )
        ,LayoutBuilder(builder: (context,constraint)=>Container(
          width: constraint.maxWidth *(percentage/100),
          height: Get.height *0.01,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: color

          ),

        ))

      ],
    );
  }
}