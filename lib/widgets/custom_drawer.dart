import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_header_model.dart';
import 'package:responsive_dash_board/models/drower_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_colors.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: AppColors.colorWhite,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoMoel: UserInfoMoel(
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com',
                  image: Assets.imagesAvatar3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Setting system',
                  image: Assets.imagesSetting,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Logout account',
                  image: Assets.imagesLogout,
                )),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
