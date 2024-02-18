import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';
import 'package:monthy/widgets/container_with_margin_padding_text.dart';
import 'package:monthy/widgets/name_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String username;

  void fetchData(){
    username = "Fahim Mahmud";
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: NameTitle(context),
        backgroundColor: appPrimaryColor,
      ),
      body: Column(
        children: [
          ContainerWithMarginPaddingText(context, 10, 15, "Welcome $username"),
        ],
      ),
    ));
  }
}
