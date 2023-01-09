import 'package:flutter/material.dart';
import 'constant.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text(
            "Settings",
          ),
          backgroundColor: primaryColor,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'Arabic Font Size:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
activeColor:    primaryColor,
                           value: arabicFontSize,

                           min: 20,
                           max: 40,

                    onChanged: (value){
                              setState(() {
                                arabicFontSize = value;
                              });


                    },

                  ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran', fontSize: arabicFontSize),
                    textDirection: TextDirection.rtl,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(),
                  ),
                  const Text(
                    'Mushaf Mode Font Size:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(
                    activeColor: primaryColor,
                           value: mushafFontSize,
                           min: 20,
               max: 50,
                   onChanged: (value){
                             setState(() {
                               mushafFontSize=value;
                             });
                   },
                      ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran', fontSize: mushafFontSize),
                    textDirection: TextDirection.rtl,
                  ),

                
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(

                                  onPressed: (){
                                    setState(() {
                                      arabicFontSize=28;
                                      mushafFontSize=40;
                                    });
                                    saveSettings();
                                  },
                          style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                          child: const Text('Reset')),
                      ElevatedButton(
                            onPressed: (){
                              saveSettings();
                              Navigator.of(context).pop();
                            },
                          style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                          child: const Text('Save')),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
