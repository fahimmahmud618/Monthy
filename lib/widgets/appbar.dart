import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';
import 'package:monthy/widgets/name_title.dart';

AppBar appbar(BuildContext context){
  return AppBar(
    title: NameTitle(context),
    backgroundColor: appPrimaryColor,
  );
}

