import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transaction_details_card.dart';

class TransactionHistoryItems extends StatefulWidget {
  const TransactionHistoryItems({super.key});

  @override
  State<TransactionHistoryItems> createState() =>
      _TransactionHistoryItemsState();
}

class _TransactionHistoryItemsState extends State<TransactionHistoryItems> {
  static const List<TransactionModel> transactions = [
    TransactionModel(
        transactionType: "Cash Withdrawal",
        transactionDate: "13 Apr, 2022",
        transactionAmount: r"$20,129",
        transactionAmountColor: Color(0xFFF3735E)),
    TransactionModel(
      transactionType: "Landing Page project",
      transactionDate: "13 Apr, 2022 at 3:30 PM",
      transactionAmount: r"$2,000",
      transactionAmountColor: Color(0xFF7DD97B),
    ),
    TransactionModel(
      transactionType: "Juni Mobile App project",
      transactionDate: "13 Apr, 2022 at 3:30 PM",
      transactionAmount: r"$20,129",
      transactionAmountColor: Color(0xFF7DD97B),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(transactions.length + 1, (index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    "13 April 2022",
                    style: AppStyles.styleMedium16(context),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                      bottom: index == transactions.length ? 0 : 12),
                  child: TransactionDetailsCard(
                      transactionAmountColor:
                          transactions[index - 1].transactionAmountColor,
                      transactionType: transactions[index - 1].transactionType,
                      transactionDate: transactions[index - 1].transactionDate,
                      transactionAmount:
                          transactions[index - 1].transactionAmount),
                );
        }).toList());
  }
}
