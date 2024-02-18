import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';

Widget ContainerWithMarginPaddingText(BuildContext context, int margin,
    int padding, String text, bool isfullwidth, Color color) {
  return Container(
    alignment: isfullwidth ? Alignment.center : null,
    margin: EdgeInsets.all(margin * get_scale_factor(context)),
    padding: EdgeInsets.all(padding * get_scale_factor(context)),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(7)),
  );
}

Widget TextWithCustomColor(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      color: color,
    ),
  );
}

Widget StatInfoShow(String title, String data) {
  return Container(
    decoration:
    BoxDecoration(color: appPrimaryColor3.withOpacity(0.1), borderRadius: BorderRadius.circular(7)),
    alignment: Alignment.centerLeft,
    margin: EdgeInsets.fromLTRB(20, 5, 50, 5),
    padding: EdgeInsets.all(10),
    child: Text(
      "$title : $data",
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
