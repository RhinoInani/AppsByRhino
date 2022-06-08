import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Title(
      title: "AppsByRhino",
      color: Colors.white,
      child: Scaffold(
        backgroundColor: lightColor,
        body: CustomScrollView(
          slivers: [
            CustomAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: size.height * 0.8,
                  decoration: BoxDecoration(color: lightColor),
                  width: size.width,
                  child: Stack(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * 0.03),
                        child: TextLiquidFill(
                          text: 'Apps By Rhino',
                          loadDuration: Duration(
                            seconds: 2,
                            milliseconds: 500,
                          ),
                          waveColor: darkColor,
                          boxBackgroundColor: lightColor,
                          textStyle: TextStyle(
                            fontSize: size.longestSide * 0.1,
                            fontWeight: FontWeight.bold,
                          ),
                          boxHeight: size.height * 0.8,
                          loadUntil: 1,
                        ),
                      ),
                      Positioned(
                        right: size.width * 0.04,
                        top: size.height * 0.1,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/logo.png"),
                          backgroundColor: darkColor,
                          maxRadius: size.longestSide * 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(color: darkColor),
                  child: Column(
                    children: [
                      Wave(size: size, color: lightColor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03,
                            ),
                            width: size.width * 0.45,
                            child: Image.asset(
                              "appthreelogo.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.03,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                RichText(
                                  textAlign: TextAlign.end,
                                  text: TextSpan(
                                    style: GoogleFonts.quicksand(
                                      fontSize: size.width * 0.1,
                                      color: mainColor,
                                    ),
                                    children: [
                                      TextSpan(
                                          text: "12,000+ ",
                                          style: TextStyle(
                                            color: Colors.white70,
                                          )),
                                      TextSpan(
                                        text: "\nUsers",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.25,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/apps');
                                    },
                                    child: Text(
                                      "Discover Apps",
                                      style: TextStyle(
                                        fontSize: size.longestSide * 0.018,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    style: outlinedButtonStyle(mainColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  decoration: BoxDecoration(color: lightFadedColor),
                  child: Column(
                    children: [
                      Wave(size: size, color: darkColor),
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.quicksand(
                            fontSize: size.longestSide * 0.075,
                            color: darkColor,
                          ),
                          children: [
                            TextSpan(
                                text: "Custom ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                )),
                            TextSpan(
                              text: "Websites",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.03,
                        ),
                        width: size.width * 0.4,
                        child: Image.asset(
                          "websitethreelogo.png",
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.03),
                        width: size.width * 0.25,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/websites');
                          },
                          child: Text(
                            "Discover Websites",
                            style: TextStyle(
                              fontSize: size.longestSide * 0.015,
                              color: Colors.white70,
                            ),
                          ),
                          style: outlinedButtonStyle(darkColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height,
                  decoration: BoxDecoration(color: mainColor),
                  child: Column(
                    children: [
                      Wave(
                        size: size,
                        color: lightFadedColor,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.quicksand(
                            fontSize: size.longestSide * 0.075,
                            color: darkColor,
                          ),
                          children: [
                            TextSpan(
                              text: "Summer ",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                            TextSpan(
                              text: "\nClasses",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "\nIn partnership with Saratoga Community Center and Rishi Kumar",
                              style: TextStyle(
                                color: darkColor,
                                fontSize: size.longestSide * 0.015,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: size.height * 0.06),
                        width: size.width * 0.25,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/classes');
                          },
                          child: Text(
                            "Enroll Now",
                            style: TextStyle(
                              fontSize: size.longestSide * 0.018,
                              color: darkColor,
                            ),
                          ),
                          style: outlinedButtonStyle(Colors.white70),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class Wave extends StatelessWidget {
  const Wave({
    Key? key,
    required this.size,
    required this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 2,
      child: WaveWidget(
        config: CustomConfig(
          colors: [color],
          durations: [25000],
          heightPercentages: [0.6],
        ),
        waveAmplitude: size.height * 0.03,
        waveFrequency: 2,
        size: Size(
          size.width,
          size.height * 0.3,
        ),
      ),
    );
  }
}
