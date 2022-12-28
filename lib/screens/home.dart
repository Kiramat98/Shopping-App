import 'package:flutter/material.dart';
import 'package:shopping_app/utills/categorieslist.dart';
import '../widgets/categories.dart';
import '../widgets/popular_product_card.dart';
import '../widgets/product_scrolling_list.dart';
import '../widgets/top_icon_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .22,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade700,
                      Colors.grey.shade500,
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TopIconContainer(
                                icon: Icons.menu,
                                bColor: Colors.black.withOpacity(.4),
                                color: Colors.transparent,
                              ),
                              // topIconsContainer(
                              //   icon: Icons.menu,
                              //   bcolor: Colors.black.withOpacity(.4),
                              // ),
                              const SizedBox(
                                width: 8,
                              ),
                              TopIconContainer(
                                icon: Icons.search,
                                bColor: Colors.black.withOpacity(.4),
                                color: Colors.transparent,
                              ),
                              // topIconsContainer(
                              //   icon: Icons.search,
                              //   bcolor: Colors.black.withOpacity(.4),
                              // ),
                            ],
                          ),
                          const TopIconContainer(
                            icon: Icons.shopping_bag_outlined,
                            bColor: Colors.transparent,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    topContainerText(topPadding: 22, text: "Welcome,"),
                    topContainerText(text: "Kiramat"),
                  ],
                ),
              ),
              const ProductsScrollingList(),
              nameAndSeeallTile(name: "Popular"),
              const PopularProductsCards(),
              nameAndSeeallTile(name: "Categories"),
              const Categories()
            ],
          ),
        ],
      ),
    );
  }

  Padding nameAndSeeallTile({String name = ''}) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            "See all",
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }

  Padding topContainerText({double topPadding = 0, String text = ''}) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: topPadding),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
