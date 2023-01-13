import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BuyNowBtn extends StatelessWidget {
  final Size? size;
  const BuyNowBtn({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size!.width / 2,
      height: 80,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
      child: const Text(
        'Buy now',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
      ),
    );
  }
}
