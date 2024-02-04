import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';

class AllExpensesItemContentInActive extends StatelessWidget {
  const AllExpensesItemContentInActive(
      {super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(allExpensesItemModel.title,
                style: AppStyles.styleBold16(context))),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '\$ ${allExpensesItemModel.price.toString()}',
            style: AppStyles.styleSemiBold24(context),
          ),
        )
      ],
    );
  }
}
