import 'package:flutter/material.dart';
import 'package:my_eco/constants.dart';
import 'package:my_eco/modles/product.dart';
class fullBody extends StatelessWidget {

  final Product product;

  const fullBody({Key? key, required this.product}) : super(key: key);

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
                  padding: EdgeInsets.only
                      (top: MediaQuery.of(context).size.height/12,
                  left: kDefaultPaddin,right: kDefaultPaddin),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27),
                        )
                    ),
                    child:
                    Column(


                      children: [
                         Row(
                           children: [

                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Color"),
                               Row(
                                 children: [

                                   ColorDot(color: Color(0xFF356C95), isSelected: true),
                                   ColorDot(color: Color(0xFFD3A984), isSelected: false),
                                   ColorDot(color: Color(0xFF989493), isSelected: false),
                                 ],
                               )
                                 ],
                               ),
                             ),
                             RichText(text: TextSpan(
                               style: TextStyle(color: kTextColor),
                                 children: [
                               TextSpan(text: "size\n"),
                               TextSpan(text: "${product.size} cm"
                                   ,style: Theme.of(context).textTheme.headline5),


                             ]))
                           ],
                         )
                      ],
                    ) ,
                  ),
                ),







                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aristocratic Hand Bag',style: TextStyle(color: Colors.white),),
                      Text(product.title,style: Theme.of(context)
                          .textTheme.headline4!
                          .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      //  SizedBox(height: kDefaultPaddin,),
                      Row(
                        children: [
                          RichText(text:TextSpan(
                              children: [
                                TextSpan(
                                    text: "Price\n") ,

                                TextSpan(
                                    text: "\$${product.price}",
                                    style: Theme.of(context).textTheme.headline4!.
                                    copyWith(color: Colors.white,
                                        fontWeight: FontWeight.bold))
                              ]
                          ),
                          ),
                          // SizedBox(height: kDefaultPaddin,),
                          Expanded(

                            child:Hero(
                            tag: "${product.id}", child: Image.asset(product.image),
                          ),
                          )
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




class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({Key? key, required this.color, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: EdgeInsets.all(2.5),
      margin: EdgeInsets.only(
          top: kDefaultPaddin/4,
          right: kDefaultPaddin/2
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)
      ),
        child: DecoratedBox(
           decoration: BoxDecoration(
                 color: color,
            shape: BoxShape.circle,
        ),
      ),
    );
  }
}
