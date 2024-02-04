import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dash_board/widgets/dashboard_mobile_tablet_layout_body.dart';
import 'package:responsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      body: AdaptiveLAyout(
          mobileLayout: (context) => const DashboardMobileTabletLayoutBody(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DesktopDashBoardLayout()),
    );
  }
}
