import 'package:flutter/material.dart';
import 'package:my_eco/screen_home/home_screen.dart';
import 'package:my_eco/screen_home/home_screen_1.dart';

class Mainhome extends StatelessWidget {
  const Mainhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child:
                TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),

                    );
                  },
                  child:Icon(Icons.login,color: Colors.green,size: 50,) ,
                ),
              ),

              Container(
                child:
                TextButton(
                  onPressed: () {
                    print("button press done");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen_2(),
                      ),

                    );
                  },
                  child:Icon(Icons.login,color: Colors.green,size: 50,) ,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
