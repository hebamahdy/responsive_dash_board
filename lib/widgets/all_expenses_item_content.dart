import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';

class AllExpensesItemContent extends StatelessWidget {
  const AllExpensesItemContent({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(allExpensesItemModel.title,
              style:
                  AppStyles.styleBold16(context).copyWith(color: Colors.white)),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14(context)
                .copyWith(color: const Color(0xFFFAFAFA)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '\$ ${allExpensesItemModel.price.toString()}',
            style: AppStyles.styleSemiBold24(context)
                .copyWith(color: Colors.white),
          ),
        )
      ],
    );
  }
}
