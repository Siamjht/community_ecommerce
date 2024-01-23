import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:community_ecommerce/view/categories_screen/women_top_screen/women_top_screen.dart';
import 'package:community_ecommerce/view/favorite_screen/favorite_screen.dart';
import 'package:community_ecommerce/view/home/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_icons.dart';
import '../../utils/app_texts.dart';
import '../categories_screen/categorie_screen.dart';
import '../myprofile_screen/my_order_details.dart';
import '../myprofile_screen/myprofile_settings.dart';
import '../my_bag/my_bag_pages/my_bag_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _pageData = [
    HomePage(),
    CategorieScreen(),
    MyBagPage(),
    FavoriteScreen(),
    MyProfileSetings()
  ];
  int _selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pageData[_selectedItem],
      ),
      bottomNavigationBar: SizedBox(
        height: 83,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
          child: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.homeIconSolid),
                  label: AppTexts.navHome),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.shopIconOutline),
                  label: AppTexts.navShop),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.bagIconOutline),
                  label: AppTexts.navBag),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.favoriteIconOutline),
                  label: AppTexts.navFavorites),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppIcons.profileIconOutline),
                  label: AppTexts.navProfile),
            ],
            backgroundColor: Colors.white,
            selectedLabelStyle: TextStyle(color: AppColors.buttonsColor),
            unselectedLabelStyle: TextStyle(color: AppColors.grayColor),
            currentIndex: _selectedItem,
            onTap: (setValue) {
              setState(() {
                _selectedItem = setValue;
              });
            },
          ),
        ),
      ),
    );
  }
}
