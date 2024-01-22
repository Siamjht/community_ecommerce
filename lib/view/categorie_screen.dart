
import 'package:flutter/material.dart';

import '../utils/app_texts.dart';

class CategorieScreen extends StatelessWidget {
  const CategorieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppTexts.categories,
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            size: 24,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          // Container(
          //   height: 100,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(8),
          //       color: AppColors.categoriesSummer),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         AppTexts.summerSales,
          //         style: TextStyle(color: AppColors.appWhite, fontSize: 24),
          //       ),
          //       Text(
          //         AppTexts.upTo,
          //         style: TextStyle(fontSize: 14, color: AppColors.appWhite),
          //       ),
          //     ],
          //   ),
          // ),
          // ListView.builder(
          //     itemCount: 4,
          //
          //     itemBuilder: (context,index){
          //       return const Card(
          //
          //         child: Column(
          //           children: [
          //
          //             Text(AppTexts.accesories,style: TextStyle(color: Colors.black),)
          //           ],
          //         ),
          //       );
          //     })

        ],
      ),
    );
  }
}