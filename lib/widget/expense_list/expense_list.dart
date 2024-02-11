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
        background: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(125, 193, 13, 0),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          // color: Theme.of(context).colorScheme.error.withOpacity(0.4),
          margin: Theme.of(context).cardTheme.margin,
          // margin: EdgeInsets.symmetric(
          //     horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
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
