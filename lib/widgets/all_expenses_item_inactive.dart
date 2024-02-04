import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_content.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_content_inactive.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header_inactive.dart';

class AllExpensesItemInActive extends StatelessWidget {
  const AllExpensesItemInActive({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          AllExpensesItemContentInActive(
            allExpensesItemModel: allExpensesItemModel,
          ),
        ],
      ),
    );
  }
}
