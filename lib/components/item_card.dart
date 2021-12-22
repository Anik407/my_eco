import 'package:flutter/material.dart';
import 'package:my_eco/modles/product.dart';
import 'package:my_eco/detalis/Detalis_Screen.dart';
import 'package:my_eco/screen_home/home_screen.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  //ItemCard(this.product,this.press);

  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetalisScreen(
                      product: product,
                    )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: MediaQuery.of(context).size.height/5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${product.id}", child: Image.asset(product.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
