import 'package:expense_tracker/components/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> expenses = [
    Expense(
      title: 'Almoço no restaurante',
      amount: 150.75,
      date: DateTime.now(),
      category: CategoryEnum.food,
    ),
    Expense(
      title: 'Combustível',
      amount: 80.00,
      date: DateTime(2025, 6, 22),
      category: CategoryEnum.travel,
    ),
    Expense(
      title: 'Cinema',
      amount: 120.00,
      date: DateTime(2025, 6, 10),
      category: CategoryEnum.leisure,
    ),
    Expense(
      title: 'Netflix',
      amount: 39.90,
      date: DateTime(2025, 6, 1),
      category: CategoryEnum.leisure,
    ),
    Expense(
      title: 'Assinatura do VS Code',
      amount: 15.00,
      date: DateTime(2025, 6, 10),
      category: CategoryEnum.work,
    ),
  ];

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Column(
        children: [Expanded(child: ExpensesList(expenses: expenses))],
      ),
    );
  }
}
