import 'package:flutter/material.dart';
import 'package:plant_app/common/app_assets.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recomended_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderWithSearchBox(),
          TitleWithMoreBtn(
            title: 'Recomended',
            onPress: () {},
          ),
          const RecomendedPlants(),
          TitleWithMoreBtn(
            title: 'Featured plants',
            onPress: () {},
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlant(
                  src: AppAssets.bottomImageOne,
                  onTap: () {},
                ),
                FeaturedPlant(
                  src: AppAssets.bottomImageOne,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
