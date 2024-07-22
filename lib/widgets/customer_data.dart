import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_title_text_field.dart';

class CustomerData extends StatefulWidget {
  const CustomerData({super.key});

  @override
  State<CustomerData> createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTitleTextField(
              hint: "Type customer name",
              title: "Customer Name",
              controller: customerNameController),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTitleTextField(
              hint: "Type customer email",
              title: "Customer Email",
              controller: customerEmailController),
        ),
      ],
    );
  }
}
