import 'package:flutter/material.dart';
import 'package:healthpayments/screens/carouselfullimage.dart';
import 'package:healthpayments/store/config.dart';


void main() {
  runApp(HealthPay());
}

class HealthPay extends StatelessWidget {
  /// => Sets the application theme configuration by accessing the configuration file.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.mainTitle,
      theme: ThemeData(
        primaryColor: Config.colorTheme,
        colorScheme: ColorScheme.fromSwatch(primarySwatch:Colors.green)
            .copyWith(secondary: Config.colorSecondary),
      ),
      home: CarouselFullImage()
    );
  }
}
