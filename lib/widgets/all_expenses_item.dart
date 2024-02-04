import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_active.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_content.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_inactive.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? AllExpensesItemActive(allExpensesItemModel: allExpensesItemModel)
        : AllExpensesItemInActive(allExpensesItemModel: allExpensesItemModel);
  }
}
