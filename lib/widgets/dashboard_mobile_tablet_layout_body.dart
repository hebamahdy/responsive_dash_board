import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_transaction_history_and_income_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice.dart';

class DashboardMobileTabletLayoutBody extends StatelessWidget {
  const DashboardMobileTabletLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        Column(
          children: [
            /*SizedBox(
              height: 40,
            ),*/
            AllExpenses(),
            SizedBox(
              height: 24,
            ),
            QuickInvoice(),
            SizedBox(
              height: 24,
            ),
            MyCardsTransactionHistoryAndIncome(),
          ],
        )
      ]),
    );
  }
}
