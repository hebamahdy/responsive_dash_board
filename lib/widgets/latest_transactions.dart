import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_listview.dart';
import 'package:responsive_dash_board/widgets/latest_transactions_list.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        // SizedBox(height: 90, child: LatestTransactionsList()),
        const LatestTransactionListView(),
      ],
    );
  }
}
