import 'package:flutter/material.dart';
import 'package:plant_app/common/app_assets.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/buy_now_btn.dart';
import 'package:plant_app/screens/details/components/desc_btn.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  final String title;
  final String country;
  final double price;
  final String src;
  const Body(
      {Key? key,
      this.title = '',
      this.country = '',
      this.price = 0.0,
      this.src = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ImageAndIcons(
            size: size,
            src: AppAssets.image,
          ),
          TitleAndPrice(
            title: title,
            country: country,
            price: price,
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Row(
            children: [
              BuyNowBtn(size: size),
              DescBtn(size: size),
            ],
          ),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
