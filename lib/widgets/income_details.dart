import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_model.dart';
import 'package:responsive_dash_board/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    IncomeModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '40%'),
    IncomeModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    IncomeModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '22%'),
    IncomeModel(color: Color(0xFFE2DECD), title: 'Other', value: '20%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeItem(incomeModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return IncomeItem(incomeModel: items[index]);
    //   },
    // );
  }
}
