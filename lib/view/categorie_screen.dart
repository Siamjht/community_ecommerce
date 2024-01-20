import 'package:community_ecommerce/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/app_texts.dart';
import 'women_screen.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            AppTexts.categories,
            style: TextStyle(fontSize: 18),
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
            WomenScreen(),  WomenScreen(),  WomenScreen(),

          ],
        ),
      ),
    );
  }
}

