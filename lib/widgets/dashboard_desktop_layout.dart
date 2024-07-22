import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/all_personal_details.dart';
import 'package:responsive_dashboard/widgets/customer_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 40,
          child: CustomerDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 86 + 67,
          child: Row(
            children: [
              Expanded(
                  flex: 86,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: AllExpensesAndQuickInvoiceSection(),
                  )),
              SizedBox(
                width: 32,
              ),
              Expanded(
                flex: 67,
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: AllPersonalDetails(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
