import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transactions_history.dart';

class MyCardsTransactionHistoryAndIncome extends StatelessWidget {
  const MyCardsTransactionHistoryAndIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        /* SizedBox(
          height: 40,
        ),*/
        MyCardsAndTransactionHistorySection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );

    //child: IncomeDetails(),
  }
}
