import 'package:flutter/material.dart';

class slider_widget extends StatelessWidget {
  const slider_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          // create a stack widget that will hold the image and a container that will hold the text and button vetically left aligned
          height: 300,
          width: 225,
          color: Color.fromARGB(0, 145, 145, 145),
          child: Stack(
            children: [
              // create a container that will hold the text and button vetically left aligned
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: 230,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff61E2EF),
                        Color(0xff0C6391),

                        // Colors.black.withOpacity(0.5),
                        // Colors.black.withOpacity(0.4),
                        // Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nike Air Max 270',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '\$ 250',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
              // create a container that will hold the image
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 200,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/shoes/s1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Color.fromARGB(255, 248, 248, 248),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '180',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Container(
                       decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xff61E2EF),
                        Color(0xff0C6391),

                        // Colors.black.withOpacity(0.5),
                        // Colors.black.withOpacity(0.4),
                        // Colors.black.withOpacity(0.1),
                      ],
                    ),
                  ),
                      child: IconButton(
                      
                        icon: Icon(Icons.add ),
                        
                        iconSize: 22.0, // Adjust the icon size as per your design
                        color: const Color.fromARGB(255, 255, 255, 255), // Adjust the icon color as per your design
                        onPressed: () {  // Add your onPressed functionality here
                          print('Add button pressed');
                        },
                      ),
                    )
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
