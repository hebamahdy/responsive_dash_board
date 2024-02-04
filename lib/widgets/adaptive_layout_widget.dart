import 'package:flutter/material.dart';

class AdaptiveLAyout extends StatelessWidget {
  const AdaptiveLAyout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      //print('layout builder width =${constrains.maxWidth}');
      if (constrains.maxWidth < 800) {
        return mobileLayout(context);
      }
      if (constrains.maxWidth < 1200) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
