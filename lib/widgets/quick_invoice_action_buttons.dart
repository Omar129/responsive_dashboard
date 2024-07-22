import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_elevated_button.dart';

class QuickInvoiceActionButtons extends StatelessWidget {
  const QuickInvoiceActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomElevatedButton(
          text: "Add more details",
          backgroundColor: Colors.transparent,
          textColor: Color(0xFF4DB7F2),
        )),
        SizedBox(
          width: 24,
        ),
        Expanded(child: CustomElevatedButton(text: "Send Money")),
      ],
    );
  }
}
