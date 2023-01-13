import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  final String title;
  const TitleWithCustomUnderline({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 24,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 7,
                padding: const EdgeInsets.only(right: kDefaultPadding / 4),
                color: kPrimaryColor.withOpacity(0.2),
              ),
            ),
          ],
        ));
  }
}
