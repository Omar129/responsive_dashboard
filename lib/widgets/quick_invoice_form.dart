import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/customer_data.dart';
import 'package:responsive_dashboard/widgets/item_data.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_action_buttons.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomerData(),
        SizedBox(
          height: 24,
        ),
        ItemData(),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceActionButtons(),
      ],
    );
  }
}
