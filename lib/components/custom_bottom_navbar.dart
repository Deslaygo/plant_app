import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:plant_app/common/app_assets.dart';
import 'package:plant_app/constants.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(
          left: kDefaultPadding * 2, right: kDefaultPadding * 2),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppAssets.flowerIcon)),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              LineAwesomeIcons.heart,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              LineAwesomeIcons.user,
              color: Colors.black45,
            ),
          ),
        ],
      ),
    );
  }
}
