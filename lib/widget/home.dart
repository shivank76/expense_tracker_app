import 'package:expense_tracker_app/widget/expense_list/expense_list.dart';
import 'package:expense_tracker_app/widget/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Job Hunt',
        amount: 12.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Amusement Park',
        amount: 14.50,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  // void _addExpenseOverlay() {
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (ctx) => const NewExpense(),
  //   ); //context -> Meta data of a function which contains information about the widget and it's position in the overall UI
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (ctx) => const NewExpense(),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(child: ExpenseList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
