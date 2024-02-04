import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_model.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeModel});
  final IncomeModel incomeModel;
  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //         Container(
    //           width: 12,
    //           height: 12,
    //           decoration: ShapeDecoration(
    //             color: incomeModel.color,
    //             shape: const OvalBorder(),
    //           ),
    //         ),
    //         const SizedBox(
    //           width: 12,
    //         ),
    //         Text(
    //           incomeModel.title,
    //           style: AppStyles.styleRegular16,
    //         ),
    //         const SizedBox(width: 24),
    //         Text(
    //           incomeModel.value,
    //           style: AppStyles.styleMedium16,
    //         )
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
