import 'package:flutter/material.dart';
import 'package:my_eco/detalis/Detals_Screen_1.dart';
import 'package:my_eco/modles/product.dart';
import 'package:my_eco/detalis/Detalis_Screen.dart';
import 'package:my_eco/modles/product_1.dart';
import 'package:my_eco/screen_home/home_screen.dart';

import '../constants.dart';

class ItemCard_1 extends StatelessWidget {
  final Producta producta;
  final Function press_1;

  //ItemCard(this.product,this.press);

  const ItemCard_1({Key? key, required this.producta, required this.press_1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetalisScreen_1(
                  producta: producta,
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
              color: producta.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${producta.id}", child: Image.asset(producta.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              producta.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${producta.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
