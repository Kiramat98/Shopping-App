import 'package:flutter/material.dart';
import 'package:shopping_app/utills/discover_list.dart';
import 'package:shopping_app/widgets/top_icon_container.dart';

import '../utills/popularproductlist.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .15,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.shade700,
                  Colors.grey.shade500,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
            child: Text(
              "Discover",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoverList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(10),
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text(
                    discoverList[index],
                    style: const TextStyle(color: Colors.grey, fontSize: 17),
                  )),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 15),
              child: GridView.builder(
                  itemCount: popularProductList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 200,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: 150,
                          height: 130,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage(popularProductList[index].image),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 15, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      popularProductList[index].name,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    Text(
                                      popularProductList[index].price,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(.4),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_forward_sharp,
                                      size: 12,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
