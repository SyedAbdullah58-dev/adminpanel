import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CloudStorage{
  final String title,totalStorage;
  final Color color;
   final Icon icon;
   final int percentage;

  CloudStorage({required this.title, required this.totalStorage, required this.color, required this.icon,required this.percentage});


  }
List DemoFiles=[
  CloudStorage(title: "Documents", totalStorage: "34", color: Colors.blue, icon: Icon(Icons.contact_page,),percentage: 34),
  CloudStorage(title: "Storage", totalStorage: "34", color: Colors.green, icon: Icon(Icons.cloud),percentage: 90),
  CloudStorage(title: "Transport", totalStorage: "34", color: Colors.yellow, icon: Icon(Icons.directions_train),percentage: 81),
  CloudStorage(title: "Employee", totalStorage: "34", color: Colors.indigo, icon: Icon(Icons.contact_page),percentage: 20)
  ,
];