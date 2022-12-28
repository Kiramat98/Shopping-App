import 'package:flutter/material.dart';
import 'package:shopping_app/screens/detail_screen.dart';

import '../utills/popularproductlist.dart';

class PopularProductsCards extends StatelessWidget {
  const PopularProductsCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .261,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularProductList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      image: popularProductList[index].image,
                      name: popularProductList[index].name,
                      description: popularProductList[index].description,
                      rating: popularProductList[index].rating,
                      price: popularProductList[index].price),
                ),
              );
            }),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  width: 150,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(popularProductList[index].image),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 15, right: 10),
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
                              style: const TextStyle(color: Colors.grey),
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
            ),
          );
        },
      ),
    );
  }
}
