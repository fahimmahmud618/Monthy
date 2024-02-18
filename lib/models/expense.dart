import 'package:monthy/models/timeTable.dart';

class Expense{
  TimeTable timeTable;
  bool typeIsFood;
  String expenseFor;
  int amount;

  Expense(this.timeTable, this.typeIsFood, this.expenseFor, this.amount);
}