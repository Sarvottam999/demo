import 'package:day1/Constant.dart';
import 'package:day1/widgets/thumbnail_widget%20copy.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            // CustomAppBar(),
            CarouselWithIndicator(),
            // Column(
            //   child: Text('Hello, world!'),
            // ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
        height: 100,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  width: 1,
                ),
              ),
              // margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              padding: EdgeInsets.all(5),
              child: IconButton(
                icon: Icon(
                  Icons.clear_all,
                  color: Colors.black,
                  size: 30,
                ),

                iconSize: 22.0, // Adjust the icon size as per your design
                color: const Color.fromARGB(255, 255, 255,
                    255), // Adjust the icon color as per your design
                onPressed: () {
                  // Add your onPressed functionality here
                  print('Add button pressed');
                },
              ),
            ),
            Spacer(),
             
        Text("shoebar"   ,style: TextStyle( fontSize: 25,fontWeight: FontWeight.bold),),
            Spacer(),
            Container(
             height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  width: 1,
                ),
              ),
              margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              padding: EdgeInsets.all(5),
              child: IconButton(
                icon: Icon(
                  
                  Icons.notifications_none_outlined,
                  color: Colors.black, 
                  size: 30,
                ),

                iconSize: 22.0, // Adjust the icon size as per your design
                color: const Color.fromARGB(255, 255, 255,
                    255), // Adjust the icon color as per your design
                onPressed: () {
                  // Add your onPressed functionality here
                  print('Add button pressed');
                },
              ),
            ),
          ],
        ));
  }
}
