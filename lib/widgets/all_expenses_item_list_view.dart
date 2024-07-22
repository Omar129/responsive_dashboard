import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int currentSelectedItemIndex = 0;
  static const List<AllExpensesItemModel> itemModels = [
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (currentSelectedItemIndex != 0) {
                setState(() {
                  currentSelectedItemIndex = 0;
                });
              } else {
                return;
              }
            },
            child: AllExpensesItem(
                isSelected: currentSelectedItemIndex == 0,
                itemModel: itemModels[0]),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (currentSelectedItemIndex != 1) {
                setState(() {
                  currentSelectedItemIndex = 1;
                });
              } else {
                return;
              }
            },
            child: AllExpensesItem(
                isSelected: currentSelectedItemIndex == 1,
                itemModel: itemModels[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (currentSelectedItemIndex != 2) {
                setState(() {
                  currentSelectedItemIndex = 2;
                });
              } else {
                return;
              }
            },
            child: AllExpensesItem(
                isSelected: currentSelectedItemIndex == 2,
                itemModel: itemModels[2]),
          ),
        ),
      ],
    );
  }
}
