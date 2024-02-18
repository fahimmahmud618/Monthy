import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';

Widget NameTitle(BuildContext context){
  return Container(
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.bar_chart, color: Colors.white,),
        SizedBox(width: 15,),
        Text("Monthy", style: logoTextStyle(context),),
      ],
    ),
  );
}