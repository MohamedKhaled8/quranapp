import 'package:flutter/material.dart';

import '../view/constant.dart';
import '../view/home.dart';
import 'custom_fore_container.dart';
import 'custom_twe_container.dart';
import 'customcontainer.dart';
import 'customt_three_container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Column(
            children: [
              CustomContainer(
                  height1: height * .27,
                  image: 'assets/icons/quran.png',
                  title: "Quran",
                  color: greenColor,
                  onpressed: () {

                  }),
              CustomTwoContainer(
                  height1: height * .20,
                  image: 'assets/icons/bookmark.png',
                  title: "Bookmars",
                  color: purpleColor,
                  onpressed: () {}),
              //CustomContainer(height1: height*.28, width1: width*.4)
            ],
          ),
        ),
        Spacer(),
        SizedBox(
          child: Column(
            children: [
              CustomThreeContainer(
                height1: height * .2,
                image: 'assets/icons/prayer.png',
                title: "players",
                color: redColor,
              ),
              CustomForeContainer(
                  height1: height * .27,
                  image: 'assets/icons/location.png',
                  title: "Qibla",
                  color: blueColor,
                  onpressed: () {}),

              //CustomContainer(height1: height*.28, width1: width*.4)
            ],
          ),
        )
      ],
    );
  }
}