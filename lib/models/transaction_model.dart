import 'package:flutter/material.dart';

class TransactionModel {
  final String transactionType, transactionDate, transactionAmount;
  final Color transactionAmountColor;

  const TransactionModel(
      {required this.transactionType,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionAmountColor});
}
