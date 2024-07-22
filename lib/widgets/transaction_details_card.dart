import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionDetailsCard extends StatelessWidget {
  const TransactionDetailsCard(
      {super.key,
      required this.transactionType,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionAmountColor});
  final String transactionType, transactionDate, transactionAmount;
  final Color transactionAmountColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionType,
                  style: AppStyles.styleSemiBold16(context),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  transactionDate,
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: const Color(0xFFAAAAAA)),
                )
              ],
            ),
            Text(
              transactionAmount,
              style: AppStyles.styleSemiBold20(context).copyWith(
                color: transactionAmountColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
