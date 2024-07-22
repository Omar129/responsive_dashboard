import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_title_text_field.dart';

class ItemData extends StatefulWidget {
  const ItemData({super.key});

  @override
  State<ItemData> createState() => _ItemDataState();
}

class _ItemDataState extends State<ItemData> {
  TextEditingController itemNameController = TextEditingController();
  TextEditingController itemAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomTitleTextField(
              controller: itemNameController,
              title: "Item name",
              hint: "Type customer name"),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: CustomTitleTextField(
              controller: itemAmountController,
              title: "Item mount",
              hint: "USD"),
        ),
      ],
    );
  }
}
