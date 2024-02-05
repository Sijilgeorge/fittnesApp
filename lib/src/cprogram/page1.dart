import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFF8F9FB),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF8F9FB),
          title: const Text(
            'Getting Started With C',
            style: TextStyle(
                color: Color(0xFF2C2C5E),
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: 'MontserratAlternates'),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome to this interactive tutorial on C programming.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7A7791),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      height: 1.5),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'This course covers all the fundamentals of C programming, step by step. By the end, you will be comfortable programming in C.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7A7791),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      height: 1.5),
                ),
                SizedBox(height: 25),
                Text(
                  'Before we start, we have an important tip for you. The only way you can get better at programming is by writing code.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7A7791),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      height: 1.5),
                ),
                SizedBox(height: 25),
                Text(
                  'To make the learning experience more effective and enjoyable, try to learn by doing while using the app that make C programming more easy and fun.',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF7A7791),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      letterSpacing: 1,
                      height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
