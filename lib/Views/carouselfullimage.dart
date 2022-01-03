import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:healthpayments/screens/loginForm.dart';
import 'package:healthpayments/store/config.dart';

class CarouselFullImage extends StatelessWidget {
  final List<String> imagesList = [
    Config.imageHomeScreen1,
    Config.imageHomeScreen2,
    Config.imageHomeScreen3,
    Config.imageHomeScreen4,
    Config.imageHomeScreen5,
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      body: CarouselSlider(
        options: CarouselOptions(
          height: height,
          autoPlay: true,
        ),
        items: imagesList
            .map(
              (item) =>
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: GestureDetector(
                  child: Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: height,
//                    width: 300,

                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginForm()));
                  },
                ),
              ),
        )
            .toList(),
      ),
    );
  }
}
