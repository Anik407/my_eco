import 'package:flutter/material.dart';
import 'package:my_eco/constants.dart';

class Categories_2 extends StatefulWidget {
  const Categories_2({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories_2> {
  List<String> categories_1 = ["Graphics Card","Ram","processor","Mother Bord"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection:  Axis.horizontal,
          itemCount:  categories_1.length,
          itemBuilder: (context, index) => buildCategory(index),
        ) ,
      ),
    );
  }
  Widget buildCategory(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories_1[index],
              style: TextStyle(fontWeight: FontWeight.bold,
                  color: selectedIndex == index ?Colors.green : kTextLightColor),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin /4),
              height: 2,
              width: 55,
              color: selectedIndex==index ? Colors.greenAccent : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
