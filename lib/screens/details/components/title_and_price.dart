import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  final String title;
  final String country;
  final double price;
  const TitleAndPrice({
    Key? key,
    this.title = '',
    this.country = '',
    this.price = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
            left: kDefaultPadding, right: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  '\$$price',
                  style: const TextStyle(
                      fontSize: 30,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Text(
              country.toUpperCase(),
              style: const TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
              ),
            ),
          ],
        ));
  }
}
