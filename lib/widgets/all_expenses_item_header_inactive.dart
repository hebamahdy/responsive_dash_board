import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeaderInActive extends StatelessWidget {
  const AllExpensesItemHeaderInActive({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(16),
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
            angle: 3.1415926536,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color(0xFF064060),
            ))
      ],
    );
  }
}
