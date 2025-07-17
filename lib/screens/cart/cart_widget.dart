import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shopsmart_users_en/constants/app_constants.dart';
import 'package:shopsmart_users_en/screens/cart/quantity_btm_sheet.dart';
import 'package:shopsmart_users_en/widgets/products/heart_btn.dart';
import 'package:shopsmart_users_en/widgets/subtitle_text.dart';
import 'package:shopsmart_users_en/widgets/title_text.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: FancyShimmerImage(
                  imageUrl: AppConstants.imageUrl,
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                ),
              ),
              SizedBox(width: 10),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitlesTextWidget(
                            label: "Title" * 15,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear, color: Colors.red),
                            ),
                            HeartButtonWidget(),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                          label: "16.00\$",
                          color: Colors.blue,
                        ),
                        Spacer(),
                        OutlinedButton.icon(
                          onPressed: () async {
                            await showModalBottomSheet(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return QuantityBottomSheetWidget();
                              },
                            );
                          },
                          icon: const Icon(IconlyLight.arrowDown2),
                          label: Text("Qty: 6"),
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
