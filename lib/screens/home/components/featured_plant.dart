import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlant extends StatelessWidget {
  final String src;
  final VoidCallback? onTap;
  const FeaturedPlant({
    Key? key,
    this.src = '',
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(src),
          ),
        ),
      ),
    );
  }
}
