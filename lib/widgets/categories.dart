import 'package:flutter/material.dart';

import '../utills/categorieslist.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                height: 70,
                width: 70,
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    categoriesList[index].image,
                  ),
                ),
              ),
              Text(
                categoriesList[index].name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
