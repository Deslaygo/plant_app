import 'package:flutter/material.dart';
import 'package:plant_app/common/app_assets.dart';
import 'package:plant_app/screens/details/details_screen.dart';
import 'package:plant_app/screens/home/components/plant_card.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          PlantCard(
            imageSrc: AppAssets.imageOne,
            name: 'Samantha',
            type: 'Russia',
            price: 49.99,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailsScreen(
                        title: 'Samantha',
                        country: 'Russia',
                        price: 49.99,
                        src: AppAssets.imageOne,
                      )));
            },
          ),
          PlantCard(
            imageSrc: AppAssets.imageTwo,
            name: 'Angel',
            type: 'Japan',
            price: 80.90,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailsScreen(
                        title: 'Angelica',
                        country: 'Japan',
                        price: 80.90,
                        src: AppAssets.imageTwo,
                      )));
            },
          ),
          PlantCard(
            imageSrc: AppAssets.imageThree,
            name: 'Orquidea',
            type: 'Mexico',
            price: 150.50,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailsScreen(
                        title: 'Orquidea',
                        country: 'Mexico',
                        price: 150.50,
                        src: AppAssets.imageThree,
                      )));
            },
          ),
        ],
      ),
    );
  }
}
