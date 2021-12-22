import 'package:flutter/material.dart';
import 'package:my_eco/components/full_body.dart';
import 'package:my_eco/constants.dart';
import 'package:my_eco/modles/product.dart';

class DetalisScreen extends StatelessWidget {

  final Product product;

  const DetalisScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,

      body: fullBody(product: product,),

      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () =>  Navigator.pop(context)
          ,
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(onPressed: () {  }, icon: Icon(Icons.search),),
          IconButton(onPressed: () {  }, icon: Icon(Icons.shopping_cart_outlined),),
          SizedBox(width: kDefaultPaddin/2,),
        ],
      ),

    );
  }
}
