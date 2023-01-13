import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;
  const TitleWithMoreBtn({Key? key, this.title = '', this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(title: title),
          const Spacer(),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: onPress,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text('More'),
            ),
          )
        ],
      ),
    );
  }
}
