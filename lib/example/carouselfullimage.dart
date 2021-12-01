import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:healthpayments/screens/loginForm.dart';

class CarouselFullImage extends StatelessWidget {
  final List<String> imagesList = [
    'https://image.freepik.com/fotos-gratis/mulher-gravida-com-foto-de-ultrassom-sentada-na-cama_1303-27133.jpg',
    'https://as1.ftcdn.net/v2/jpg/02/45/06/70/500_F_245067019_g8tHBkEin4dfjRAcry5ta4p8J1ccy61U.jpg',
    'https://as2.ftcdn.net/v2/jpg/02/04/01/79/500_F_204017932_GDQIdkIkHfYgmZSXqn6iKcO1NpYmGPkN.jpg',
    'https://as2.ftcdn.net/v2/jpg/01/69/04/41/500_F_169044122_ldXCJYnH1DnEerrl7zCGbkOZDzEHRol3.jpg',
    'https://t3.ftcdn.net/jpg/02/81/21/06/240_F_281210681_9EfzWqtj7pN8k1I3ZC0POxa0mej6Q3ZP.jpg',
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
