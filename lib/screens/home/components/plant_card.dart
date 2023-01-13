import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class PlantCard extends StatelessWidget {
  final String imageSrc;
  final String name;
  final String type;
  final double price;
  final VoidCallback? onTap;

  const PlantCard({
    Key? key,
    this.imageSrc = '',
    this.name = '',
    this.type = '',
    this.price = 0.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2,
        ),
        child: Column(
          children: [
            Image.asset(imageSrc),
            Container(
              padding: const EdgeInsets.only(
                left: kDefaultPadding / 2,
                right: kDefaultPadding / 2,
                top: kDefaultPadding / 3,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(name.toUpperCase()),
                      const Spacer(),
                      Text('\$$price'),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    type.toUpperCase(),
                    style: TextStyle(color: kPrimaryColor.withOpacity(0.5)),
                  ),
                  const SizedBox(height: 4),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
