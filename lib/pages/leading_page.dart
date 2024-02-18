import 'dart:async';

import 'package:flutter/material.dart';
import 'package:monthy/pages/home_page.dart';
import 'package:monthy/styles.dart';
import 'package:monthy/widgets/name_title.dart';

class LeadingPage extends StatefulWidget {
  const LeadingPage({super.key});

  @override
  State<LeadingPage> createState() => _LeadingPageState();
}

class _LeadingPageState extends State<LeadingPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("logo1.png", height: 200, width: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.bar_chart, size: 30*get_scale_factor(context),),
                      SizedBox(width: 10,),
                      Text("Monthy",
                        style: TextStyle(
                          fontSize: 20*get_scale_factor(context),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
      ),
    ));
  }
}
