import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../utils/app_texts.dart';
import '../widgets/custom_text.dart';
import 'categori_tab_screen.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:   CustomText(
            text: AppTexts.categories,
            fontSize:18 ,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.search,
              size: 24,
            ),
            SizedBox(
              width: 10,
            )
          ],
          bottom: TabBar(
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: AppColors.tabBarIndicatorColor,
            tabs: [
              Tab(
                text: AppTexts.women,
              ),
              Tab(
                text: AppTexts.men,
              ),
              Tab(
                text: AppTexts.kids,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoreTabScreen(),  CategoreTabScreen(),  CategoreTabScreen(),

          ],
        ),
      ),
    );
  }
}

