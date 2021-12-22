import 'package:flutter/material.dart';
import 'package:my_eco/components/full_body.dart';
import 'package:my_eco/components/full_body_1.dart';
import 'package:my_eco/constants.dart';
import 'package:my_eco/modles/product.dart';
import 'package:my_eco/modles/product_1.dart';

class DetalisScreen_1 extends StatelessWidget {

  final Producta producta;

  const DetalisScreen_1({Key? key, required this.producta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: producta.color,

      body: fullBody_1(producta: producta,),

      appBar: AppBar(
        backgroundColor: producta.color,
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
