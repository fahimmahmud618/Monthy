import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';
import 'package:monthy/widgets/container_with_margin_padding_text.dart';
import 'package:monthy/widgets/name_title.dart';

class StatData{
  String title;
  String data;

  StatData(this.title, this.data);
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<StatData> expenseStatData;
  late List<StatData> tuitionStatData;
  late String username;
  void fetchData(){
    username = "Fahim Mahmud";
    expenseStatData.add(new StatData("Food", "1200"));
    expenseStatData.add(new StatData("Other", "800"));
    expenseStatData.add(new StatData("Total", "2000"));

    tuitionStatData.add(new StatData("Enam", "8"));
    tuitionStatData.add(new StatData("Boni Amin", "87"));
    tuitionStatData.add(new StatData("Roufa", "9"));
    tuitionStatData.add(new StatData("Jahin", "14"));
    tuitionStatData.add(new StatData("Athai", "7"));
  }

  @override
  void initState() {
    expenseStatData = [];
    tuitionStatData = [];
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContainerWithMarginPaddingText(context, 10, 15, "Welcome $username",true, appPrimaryColor2),
            ContainerWithMarginPaddingText(context, 10,10, "Expense Stat", false, appPrimaryColor3),
            for(StatData s in expenseStatData)
              StatInfoShow(s.title, s.data),
            ContainerWithMarginPaddingText(context, 10,10, "Tuition Stat", false, appPrimaryColor3),
            for(StatData s in tuitionStatData)
              StatInfoShow(s.title, s.data),
          ],
        ),
      ),
    ));
  }
}
