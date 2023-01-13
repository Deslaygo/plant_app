import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:plant_app/common/app_assets.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  final Size? size;
  final String src;
  const ImageAndIcons({Key? key, this.size, this.src = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size!.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(LineAwesomeIcons.arrow_left)),
                    ),
                    const Spacer(),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 400),
                      child: const IconCard(iconSrc: AppAssets.iconoDos),
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 400),
                      delay: const Duration(milliseconds: 100),
                      child: const IconCard(iconSrc: AppAssets.iconoTres),
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 400),
                      delay: const Duration(milliseconds: 200),
                      child: const IconCard(iconSrc: AppAssets.iconoCuatro),
                    ),
                    FadeInLeft(
                      duration: const Duration(milliseconds: 400),
                      delay: const Duration(milliseconds: 300),
                      child: const IconCard(iconSrc: AppAssets.iconoDos),
                    ),
                  ],
                ),
              ),
            ),
            FadeIn(
              duration: const Duration(milliseconds: 700),
              delay: const Duration(milliseconds: 200),
              child: Container(
                height: size!.height * 0.8,
                width: size!.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.3))
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(src),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
