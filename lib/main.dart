import 'package:flutter/material.dart';
import 'package:my_eco/screen_home/home_screen.dart';
import 'package:my_eco/screen_home/home_screen_1.dart';

import 'components/body_2.dart';
import 'main_home.dart';

void main (){
  runApp(myapp());
}

class myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My ECO",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Mainhome (),
    );
  }
}
