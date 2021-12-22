import 'package:flutter/material.dart';
import 'package:my_eco/constants.dart';
import 'package:my_eco/modles/product.dart';
import 'package:my_eco/modles/product_1.dart';
class fullBody_1 extends StatelessWidget {

  final Producta producta;

  const fullBody_1({Key? key, required this.producta}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    height: 600,
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27),
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aristocratic Hand Bag',style: TextStyle(color: Colors.white),),
                      Text(producta.title,style: Theme.of(context)
                          .textTheme.headline4!
                          .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      //  SizedBox(height: kDefaultPaddin,),
                      Row(
                        children: [
                          RichText(
                            text:TextSpan(
                              children: [
                                TextSpan(
                                    text: "Price\n") ,

                                TextSpan(
                                    text: "\$${producta.price}",
                                    style: Theme.of(context).textTheme.headline4!.
                                    copyWith(color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ]
                          ),
                          ),
                          // SizedBox(height: kDefaultPaddin,),
                          Expanded(child:Hero(
                            tag: "${producta.id}", child: Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Image.asset(producta.image),
                            ),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
