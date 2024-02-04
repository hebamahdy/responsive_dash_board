import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styls.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody(),
          // Row(
          //   // crossAxisAlignment: CrossAxisAlignment.center,
          //   //mainAxisSize: MainAxisSize.max,
          //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Expanded(child: IncomeChart()),
          //     Expanded(flex: 2, child: IncomeDetails()),
          //   ],
          // ),
        ],
      ),
    );
  }
}
