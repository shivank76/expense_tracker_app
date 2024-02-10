import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widget/expense_list/expense_items.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItems(expenses[index]),
    );
  }
}
