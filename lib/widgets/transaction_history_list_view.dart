import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: '\$20,129',
        isWithdrawal: true),
    TransactionItemModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amount: '\$2,000',
        isWithdrawal: false),
    TransactionItemModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM ',
        amount: '\$20,129',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TransactionItem(transactionItemModel: e)).toList(),
    );
    // return ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransactionItem(transactionItemModel: items[index]);
    //   },
    // );
  }
}
