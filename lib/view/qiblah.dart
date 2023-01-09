import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class Qibla extends StatefulWidget {
  const Qibla({Key? key}) : super(key: key);

  @override
  State<Qibla> createState() => _QiblaState();
}

class _QiblaState extends State<Qibla> {
  double? heading = 0;
@override
  void initState() {
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading = event.heading;
      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text("Qibla"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
            Text("${heading!.ceil()}" , style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          SizedBox(
             height: 50.0,
             ),
          Padding(padding: EdgeInsets.all(18.0) ,
          child: Stack(
            alignment: Alignment.center,
            children: [
            Image.asset("assets/icons/cadrant.png"),
            Transform.rotate(angle: ((heading ?? 0 ) * (pi / 180) * -1) ,
            child: Image.asset("assets/icons/compass.png" , scale: 1.1,),
            )
          ],),

          ),

        ],
      ),
    );
  }
}
