import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quranapp/view/qiblah.dart';

import '../constant/surah_builder.dart';
import '../widgets/dashboard.dart';
import 'constant.dart';
import 'index.dart';
import 'mydrawer.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
       // leading: Icon(
       //   Icons.menu,
       //   color: greenColor,
      //  ),

        title: Text(
          "myQuran",
          style: titleGreenStyle(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: blueColor,
              backgroundImage: const AssetImage(
                "assets/icons/quran.png",
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: height * .01),
                  child: Center(
                    child: Image(
                      image: const AssetImage('assets/icons/logo.png'),
                      width: width * .2,
                    ),
                  )),
              LastReadWidget(height: height, width: width),
              Dashboard(height: height)
            ],
          ),
        ),
      ),
    );
  }
}










class LastReadWidget extends StatelessWidget {
  const LastReadWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {},
      child: Container(
        height: height * .15,
        width: width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(1.5, 3), // changes position of shadow
              ),
            ],
            image: DecorationImage(
                image: AssetImage('assets/icons/dashboard.png'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                primaryColor.withOpacity(0.7),
                secondaryColor.withOpacity(0.7)
              ]),
              borderRadius: BorderRadius.circular(25)),
          child: Row(children: [
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * .03, vertical: height * .02),
                child: SizedBox(
                  width: width * .4,
                  child: ListTile(
                    title: Text(
                      "Inspiration",
                      style: titleStyle(),
                    ),
                    subtitle: Text(
                      'See Inspiration Videos and more',
                      style: subtitleStyle(),
                    ),
                  ),
                )),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: width * .04),
              child: SizedBox(
                height: height * .15,
                width: width * .3,
                child: Image.asset(
                  'assets/icons/lamp.png',
                  fit: BoxFit.fill,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class GotoWidget extends StatelessWidget {
  final VoidCallback? onpressed;
  const GotoWidget({Key? key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        InkWell(
          onTap: (){
            Get.to(IndexPage());
          },
            child: Text('Go to', style: miniStyle())),
        SizedBox(
          width: 7,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 13,
        )
      ],
    );
  }
}


class GotoTwoWidget extends StatelessWidget {
  final VoidCallback? onpressed;
  const GotoTwoWidget({Key? key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        InkWell(
            onTap: (){
              Get.to((SurahBuilder( arabic: quran[0],
                sura: bookmarkedSura - 1,
                suraName: arabicName[bookmarkedSura - 1]['name'],
                ayah: bookmarkedAyah,)));
            },
            child: Text('Go to', style: miniStyle())),
        SizedBox(
          width: 7,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 13,
        )
      ],
    );
  }
}
class GotoThreeWidget extends StatelessWidget {
  final VoidCallback? onpressed;
  const GotoThreeWidget({Key? key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        InkWell(
            onTap: (){
              Get.to(Qibla());
            },
            child: Text('Go to', style: miniStyle())),
        SizedBox(
          width: 7,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 13,
        )
      ],
    );
  }
}
class GotoForWidget extends StatelessWidget {
  final VoidCallback? onpressed;
  const GotoForWidget({Key? key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        InkWell(
            onTap: (){
              Get.to(Qibla());
            },
            child: Text('Go to', style: miniStyle())),
        SizedBox(
          width: 7,
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 13,
        )
      ],
    );
  }
}