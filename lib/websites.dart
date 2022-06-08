import 'package:apps_by_rhino/constants.dart';
import 'package:flutter/material.dart';

class WebsitesPage extends StatelessWidget {
  const WebsitesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    currentScreen = "websites";
    return Title(
        color: Colors.white,
        title: "Websites",
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                lightColor,
                mainColor,
                darkColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: CustomScrollView(
              slivers: [
                CustomAppBar(),
              ],
            ),
          ),
        ));
  }
}
