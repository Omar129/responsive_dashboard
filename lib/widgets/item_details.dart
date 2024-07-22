import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailModel});
  final ItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const OvalBorder(), color: itemDetailModel.color),
      ),
      title: Text(
        itemDetailModel.title,
        style: AppStyles.styleRegular14(context),
      ),
      trailing: Text(
        itemDetailModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
