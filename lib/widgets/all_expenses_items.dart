import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({super.key});

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  final List<AllExpensesItemModel> expensesItemModels = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: 20.129),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: 20.129),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'Ap ril 2022',
        price: 20.129),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: expensesItemModels.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: Row(
            children: [
              SizedBox(
                width: index == 1 ? 8 : 0,
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      if (selectedIndex != index) {
                        updateIndex(index);
                      }
                    },
                    child: AllExpensesItem(
                      allExpensesItemModel: item,
                      isActive: selectedIndex == index,
                    )
                    //  Row(
                    //   children: [
                    //     SizedBox(
                    //       width: index == 1 ? 8 : 0,
                    //     ),
                    //     AllExpensesItem(
                    //       allExpensesItemModel: item,
                    //       isActive: selectedIndex == index,
                    //     ),
                    //     SizedBox(
                    //       width: index == 1 ? 8 : 0,
                    //     ),
                    //   ],
                    // ),
                    ),
              ),
              SizedBox(
                width: index == 1 ? 8 : 0,
              ),
            ],
          ),
        );
      }).toList(),
    );

    /*return Row(
      children: List.generate(expensesItemModels.length, (index) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpensesItem(
              allExpensesItemModel: expensesItemModels[index],
            ),
          ),
        );
      }),
    );*/

    /* ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: expensesItemModels.length,
      itemBuilder: (context, index) => const SizedBox(
        width: 100,
        child: AllExpensesItem(
            allExpensesItemModel: AllExpensesItemModel(
                image: Assets.imagesIncome,
                title: 'Income',
                date: 'April 2022',
                price: 20.129)),
      ),
    )*/
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
