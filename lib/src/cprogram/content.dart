import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studyapp/src/cprogram/page1.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  PageController _controller = PageController();
  int _currentIndex = 0;

  // Define the pages
  List<Widget> pages = [
    Page1(),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
    Container(
      color: Colors.black38,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth = screenSize.width * 1;

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: pages,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),

          // Dot indicator
          SafeArea(
            child: Container(
              alignment: Alignment.topCenter,
              child: SmoothPageIndicator(
                controller: _controller,
                count: pages.length,
                effect: SlideEffect(
                  spacing: 5.0,
                  radius: 4.0,
                  dotWidth: containerWidth / pages.length,
                  dotHeight: 5,
                  paintStyle: PaintingStyle.fill,
                  strokeWidth: 1.5,
                  dotColor: Color(0xFF98B6ED),
                  activeDotColor: Color(0xFF0E53E1),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20, left: 20, right: 20, top: 5),
        color: Color(0xFFF8F9FB),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                _onItemTapped(_currentIndex - 1);
              },
            ),
            SizedBox(width: 40),
            IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
              onPressed: () {
                _onItemTapped(_currentIndex + 1);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index >= 0 && index < pages.length) {
      setState(() {
        _currentIndex = index;
        _controller.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      });
    }
  }
}
