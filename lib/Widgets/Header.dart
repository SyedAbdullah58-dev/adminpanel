import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants.dart';
import 'ProfileCard.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),Spacer(),
        Expanded(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: const BorderRadius.all(Radius.circular(10))),
                  fillColor: secondaryColor,
                  filled: true,suffixIcon: Container(
height: Get.height * 0.01,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.blue,
                    ),

                    child: InkWell(
                    onTap: (){},
                    hoverColor: Colors.blue,
                    child: Icon(Icons.search,color: Colors.white54,)),
                  )
              ),
            )),
        ProfileCard()
      ],
    );
  }
}