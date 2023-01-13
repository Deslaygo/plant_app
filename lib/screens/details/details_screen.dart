import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String title;
  final String country;
  final double price;
  final String src;
  const DetailsScreen({
    Key? key,
    this.title = '',
    this.country = '',
    this.price = 0.0,
    this.src = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        title: title,
        country: country,
        price: price,
        src: src,
      ),
    );
  }
}
