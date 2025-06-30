import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title),
            SizedBox(height: 4),
            Row(
              children: [
                Text('R\$${expense.amount.toStringAsFixed(2)}'),
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    SizedBox(height: 8, width: 5,),
                    Text(expense.category.name),
                  ],
                ),
                Spacer(), 
                Text(expense.getFormattedDate()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
