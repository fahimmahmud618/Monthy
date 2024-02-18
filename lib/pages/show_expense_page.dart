import 'package:flutter/material.dart';
import 'package:monthy/styles.dart';
import 'package:monthy/widgets/appbar.dart';
import 'package:monthy/widgets/container_with_margin_padding_text.dart';
import 'package:monthy/widgets/table_row.dart';

class ShowExpensePage extends StatefulWidget {
  const ShowExpensePage({super.key});

  @override
  State<ShowExpensePage> createState() => _ShowExpensePageState();
}

class _ShowExpensePageState extends State<ShowExpensePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerWithMarginPaddingText(context, 15, 10, "Expense Chart January", true, appPrimaryColor2),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Table(
                border: TableBorder.all(color: Colors.black.withOpacity(0.2),),
                children: [
                  myTableRowHeading("Date", "Weekday", "Food", "Other", "Total", true),
                  myTableRow("12 January 2024", "Saturday", "100", "70", "170", true),
                  myTableRow("12 January 2024", "Saturday", "100", "70", "170", false),
                  myTableRow("12 January 2024", "Saturday", "100", "70", "170", true),
                  myTableRow("12 January 2024", "Saturday", "100", "70", "170", false),
                  myTableRow("12 January 2024", "Saturday", "100", "70", "170", true),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
