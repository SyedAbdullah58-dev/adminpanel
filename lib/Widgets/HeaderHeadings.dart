import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



Widget HeaderHeadings( {required String title, required Icon icon, required VoidCallback press} )
{
  return ListTile(
    onTap: press,
    leading: icon,
    title: Text(
      title,
      style: TextStyle(color: Colors.white54),
    ),
  );

}