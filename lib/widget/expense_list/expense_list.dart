import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widget/expense_list/expense_items.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(
      {super.key, required this.expenses, required this.onRemovedExpense});
  final List<Expense> expenses;
  final void Function(Expense expense) onRemovedExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        onDismissed: (direction) => onRemovedExpense(
          expenses[index],
        ),
        child: ExpenseItems(
          expenses[index],
        ),
      ),
    );
  }
}
