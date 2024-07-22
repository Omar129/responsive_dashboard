import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container_background.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          )
        ],
      ),
    );
  }
}
