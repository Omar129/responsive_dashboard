import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container_background.dart';
import 'package:responsive_dashboard/widgets/my_card_details.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MycardsTransactionsHistory extends StatelessWidget {
  const MycardsTransactionsHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
        padding: 24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCardDetails(),
            Divider(
              height: 40,
            ),
            TransactionHistory(),
          ],
        ));
  }
}
