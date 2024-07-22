import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<ItemDetailModel> items = [
    ItemDetailModel(
        color: Color(0xFF208BC7), title: "Design Service", value: "40%"),
    ItemDetailModel(
        color: Color(0xFF4DB7F2), title: "Design Product", value: "25%"),
    ItemDetailModel(
        color: Color(0xFF064060), title: "Product Royality", value: "20%"),
    ItemDetailModel(color: Color(0xFFE2DECD), title: "Other", value: "15%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemDetails(itemDetailModel: items[index]);
        });
  }
}
