import 'package:flutter/material.dart';
 
class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<String> images = [
'assets/shoes/s1.png', 
'assets/shoes/s1.png', 
'assets/shoes/s1.png', 
'assets/shoes/s1.png', 

  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
              itemCount: images.length,
              controller: _pageController,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return thumbnail_widget();
              },
            ),
          ),
          SizedBox(height: 2.0),
          PageViewIndicator(
            currentPage: _currentPage,
            pageCount: images.length,
          ),
        ],
      ),
    );
  }
}

class PageViewIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  PageViewIndicator({required this.currentPage, required this.pageCount});

  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = [];
    for (int i = 0; i < pageCount; i++) {
      indicators.add(
        Container(
          width: 6.0,
          height: 6.0,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentPage ? Colors.blue : Colors.grey,
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }
}











































class thumbnail_widget extends StatelessWidget {
  const thumbnail_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
          // create a stack widget that will hold the image and a container that will hold the text and button vetically left aligned
          height: 250,
          width: 365,
          color: Color.fromARGB(0, 145, 145, 145),
          child: Stack(
            children: [
              // create a container that will hold the text and button vetically left aligned
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(30),
                  height: 150,
                  width: 365,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
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
                Text(softWrap:    true,
                        'Nike Air Max 270',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(11),
                        height: 40,
                        width: 100,
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
                        child: Text(
                          'Explore Now',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // create a container that will hold the image
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 200,
                  width: 225,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/shoes/s5.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
