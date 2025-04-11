import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expense,
    required this.onRemoveExpense,
  });

  final List<Expense> expense;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expense.length,
      itemBuilder: (context, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        ),
        onDismissed: (direction) {
          onRemoveExpense(expense[index]);
        },
        key: ValueKey(expense[index]),
        child: ExpensesItem(expense[index]),
      ),
    );
  }
}
