import 'package:flutter/material.dart';
import 'package:shopping_app/utills/lists.dart';

class ProductsScrollingList extends StatelessWidget {
  const ProductsScrollingList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
        itemCount: dataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.grey.shade400,
                  Colors.grey.shade600,
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(.2),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Column(
                      children: [
                        const Text(
                          "New Spring",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Collection",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              dataList[index].btext,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 10,
                      top: 20,
                      left: 10,
                      bottom: 5,
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(dataList[index].image1),
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
