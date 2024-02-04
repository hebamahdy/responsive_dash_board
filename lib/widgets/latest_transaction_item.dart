import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            SvgPicture.asset(transactionModel.image),
            const SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionModel.title,
                  style: AppStyles.styleSemiBold16(context),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  transactionModel.subTitle,
                  style: AppStyles.styleRegular12(context),
                )
              ],
            )
          ],
        ),
      )

      /*ListTile(
        leading: Center(child: SvgPicture.asset(transactionModel.image)),
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Column(
          children: [
            const SizedBox(
              height: 6,
            ),
            Text(
              transactionModel.subTitle,
              style: AppStyles.styleRegular12,
            ),
          ],
        ),
      )*/
      ,
    );
  }
}
