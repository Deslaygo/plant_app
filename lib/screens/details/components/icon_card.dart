import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class IconCard extends StatelessWidget {
  final String iconSrc;
  const IconCard({Key? key, this.iconSrc = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: 62,
      height: 62,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                blurRadius: 22,
                color: kPrimaryColor.withOpacity(0.22)),
            const BoxShadow(
                offset: Offset(-15, -15), blurRadius: 20, color: Colors.white),
          ]),
      child: SvgPicture.asset(iconSrc),
    );
  }
}
