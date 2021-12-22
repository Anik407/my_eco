import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price , size , id ;
  final Color color;
  Product({
   required this.id,
   required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
 });
 }


   List<Product> products = [
     Product(
         id: 1,
         title: "Office Code 1",
         price: 234,
         size: 12,
         description: "dummyText",
         image: "assets/images/images__1_-removebg-preview (1).png",
         color: Color(0xFF3D82AE)),
     Product(
         id: 2,
         title: "belt bag",
         price: 234,
         size: 8,
         description: "dummyText",
         image: 'assets/images/images__2_-removebg-preview.png',
         color: Color(0xFFD3A984)),
     Product(
         id: 3,
         image: "assets/images/images__3_-removebg-preview.png",
         title: "hang Top",
         price: 234,
         description: "dummyText",
         size: 10,
         color: Color(0xFF989493)),
     Product(
         id: 4,
         image: "assets/images/download__1_-removebg-preview.png",
         title: "Old Fashion",
         price: 234,
         description: "dummyText",
         size: 11,
         color: Color(0xFFd9a893)),
     Product(
         id: 5,
         image: "",
         title: 'Office Code',
         price: 234,
         description: "dummyText",
         size: 12,
         color: Color(0xFFB7883)),
     Product(
         id: 6,
         image: "",
         title: "Office Code",
         price: 234,
         description: "dummyText",
         size: 12,
         color: Color(0xFFAEAEAE)
     ),
   ];

   String dummyText =
       "Gender：Women \n"
       "Brand：NUCELLE \n"
       "Material：Cowhide Leather \n"
       "Function：Tote bag \n,"
       "Messenger bag Color：Blue\n "
       "Small of Big：Middle-sized bag\n"
       "Size：L:31.5CM H:26CM W:9.5CM Handle Strap:12CM Shoulder Strap:121CM（Adjustable and Disassemble）\n"
       "Open method：Zipper\n"
       "Internal structure：cell phone pocket, card pocket, zipper pocket\n"
       "Material inside：Brand LOGO top grand jacquard inning\n"
       "Packing：Inner package:Packing brand non-woven bag/Outer packing:packing brand poly bag\n"
       "Place of origin：Guangdong China (Mainland)";

