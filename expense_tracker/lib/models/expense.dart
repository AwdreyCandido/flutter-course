import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final format = DateFormat.yMd();
const uuid = Uuid();

enum CategoryEnum { food, travel, leisure, work }

const categoryIcons = {
  CategoryEnum.food: Icons.lunch_dining,
  CategoryEnum.travel: Icons.flight_takeoff,
  CategoryEnum.leisure: Icons.movie,
  CategoryEnum.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final CategoryEnum category;

  String getFormattedDate() {
    return format.format(date);
  }
}
