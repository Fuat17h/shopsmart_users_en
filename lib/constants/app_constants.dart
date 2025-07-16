import 'package:shopsmart_users_en/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl =
      "https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png";

  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "assets/images/categories/mobiles.png",
      name: "Phones",
      image: "assets/images/categories/mobiles.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/pc.png",
      name: "Laptops",
      image: "assets/images/categories/pc.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/electronics.png",
      name: "Electronics",
      image: "assets/images/categories/electronics.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/watch.png",
      name: "Watches",
      image: "assets/images/categories/watch.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/fashion.png",
      name: "Clothes",
      image: "assets/images/categories/fashion.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/shoes.png",
      name: "Shoes",
      image: "assets/images/categories/shoes.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/book_img.png",
      name: "Books",
      image: "assets/images/categories/book_img.png",
    ),
    CategoriesModel(
      id: "assets/images/categories/cosmetics.png",
      name: "Cosmetics",
      image: "assets/images/categories/cosmetics.png",
    ),
  ];
}
  // static List<CategoriesModel> categoriesList = [
  //   CategoriesModel(
  //     id: AssetsManager.mobiles,
  //     name: "Phones",
  //     image: AssetsManager.mobiles,
  //   ),
  //   CategoriesModel(
  //     id: AssetsManager.pc,
  //     name: "Laptops",
  //     image: AssetsManager.cosmetics,
  //   ),
  //   CategoriesModel(
  //     id: AssetsManager.electronics,
  //     name: "Electronics",
  //     image: AssetsManager.electronics,
  //   ),
  // ];




