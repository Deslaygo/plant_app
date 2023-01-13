import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class DescBtn extends StatelessWidget {
  final Size? size;
  const DescBtn({
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
          color: kBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
      child: const Text(
        'Description',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    );
  }
}
