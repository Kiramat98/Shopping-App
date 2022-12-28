import 'package:flutter/material.dart';
import 'package:shopping_app/utills/discover_list.dart';

class DetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String rating;
  final String price;
  const DetailScreen(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.rating,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Details",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: MediaQuery.of(context).size.height * .5,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          price,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(rating),
                        const Icon(
                          Icons.star,
                          size: 17,
                          color: Colors.orangeAccent,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: Text(description),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                child: Text(
                  "SIZE",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: sizesList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: Text(sizesList[index]),
                    );
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.shade300,
                      Colors.grey.shade300,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.shopping_bag_outlined),
                    Text("Add to cart")
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
