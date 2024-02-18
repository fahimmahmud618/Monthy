import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';

TableRow myTableRow(String date, String weekDay, String food, String other,
    String total, bool isOdd) {
  return TableRow(
      decoration: BoxDecoration(
          color: isOdd
              ? appPrimaryColor3.withOpacity(0.3)
              : Colors.white,),
      children: [
        Column(
          children: [Container(
              padding:  EdgeInsets.fromLTRB(8, 2, 2, 2),
              margin:  EdgeInsets.fromLTRB(8, 2, 2, 2),
              child: Text(date))],
        ),
        Column(
          children: [Center(child: Text(weekDay))],
        ),
        Column(
          children: [Text(food)],
        ),
        Column(
          children: [Text(other)],
        ),
        Column(
          children: [Text(total)],
        ),
      ]);
}

TableRow myTableRowHeading(String date, String weekDay, String food, String other,
    String total, bool isOdd) {
  return TableRow(
      decoration: BoxDecoration(
          color:appPrimaryColor3.withOpacity(0.7)),
      children: [
        Column(
          children: [Container(
              padding:  EdgeInsets.fromLTRB(8, 2, 2, 2),
              margin:  EdgeInsets.fromLTRB(8, 2, 2, 2),
              child: Text(date))],
        ),
        Column(
          children: [Center(child: Text(weekDay))],
        ),
        Column(
          children: [Text(food)],
        ),
        Column(
          children: [Text(other)],
        ),
        Column(
          children: [Text(total)],
        ),
      ]);
}
