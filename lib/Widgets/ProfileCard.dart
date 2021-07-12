
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: secondaryColor,borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white54)),
        child: Row(children: [Image.asset("assets/profile_pic.png")
          ,Text("Syed Abdullah"),Icon(Icons.arrow_drop_down)

        ],),
      ),
    );
  }
}