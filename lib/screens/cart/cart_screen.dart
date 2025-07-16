import 'package:flutter/material.dart';
import 'package:shopsmart_users_en/services/assets_manager.dart';
import 'package:shopsmart_users_en/widgets/title_text.dart';

import '../../widgets/empty_bag.dart';
import 'bottom_checkout.dart';
import 'cart_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
          body: EmptyBagWidget(
            imagePath: AssetsManager.shoppingBasket,
            title: "Your cart is empty!",
            subtitle:
                "Looks like your cart is empty add something and make me happy",
            buttonText: "Shop Now",
          ),
        )
        : Scaffold(
          bottomSheet: CartBottomSheetWidget(),
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.shoppingCart),
            ),
            title: TitlesTextWidget(label: "Cart (6)"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete_forever_rounded),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CartWidget();
            },
          ),
        );
  }
}
