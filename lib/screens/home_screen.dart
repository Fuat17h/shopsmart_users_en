// import 'dart:developer';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shopsmart_users_en/constants/app_constants.dart';
import 'package:shopsmart_users_en/widgets/app_name_text.dart';

import '../services/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        title: AppNameTextWidget(fontSize: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            SizedBox(
              height: size.height * 0.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(
                      AppConstants.bannersImages[index],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: AppConstants.bannersImages.length,
                  pagination: SwiperPagination(
                    // alignment: Alignment.center
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.red,
                      color: Colors.white,
                    ),
                  ),
                  // control: SwiperControl(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
