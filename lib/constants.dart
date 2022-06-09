import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

Color lightColor = Color.fromRGBO(155, 206, 250, 1);
Color darkColor = Color.fromRGBO(47, 88, 124, 1);
Color mainColor = Color.fromRGBO(94, 174, 248, 1);
Color fadedColor = Color.fromRGBO(78, 104, 125, 1);
Color lightFadedColor = Color.fromRGBO(73, 138, 197, 1);

String currentScreen = "home";

ButtonStyle highlightButtonStyle(String checkNamed) {
  return ButtonStyle(
    foregroundColor:
        MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      if (currentScreen == checkNamed) return darkColor;
      if (states.contains(MaterialState.focused)) return darkColor;
      if (states.contains(MaterialState.hovered)) return darkColor;
      if (states.contains(MaterialState.pressed)) return fadedColor;
      return Colors.white70;
    }),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
  );
}

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    Key? key,
    required this.title,
    required this.checkNamed,
    required this.pushNamed,
  }) : super(key: key);

  final String title;
  final String checkNamed;
  final String pushNamed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.01,
      ),
      child: TextButton(
        onPressed: () {
          if (currentScreen != "$checkNamed") {
            Navigator.of(context).pushNamed('$pushNamed');
          }
          currentScreen = "$checkNamed";
        },
        child: Text(
          "$title",
          style: TextStyle(
            fontSize: size.longestSide * 0.014,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: highlightButtonStyle(checkNamed),
      ),
    );
  }
}

List<Widget> navBar = [
  NavBarButton(title: 'Home', checkNamed: 'home', pushNamed: '/'),
  NavBarButton(title: 'Apps', checkNamed: 'apps', pushNamed: '/apps'),
  NavBarButton(
      title: 'Websites', checkNamed: 'websites', pushNamed: '/websites'),
  NavBarButton(
      title: 'Classes', checkNamed: 'classes', pushNamed: '/summer-classes'),
];

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Image.asset(
        "assets/logo.png",
        fit: BoxFit.fitHeight,
      ),
      actions: navBar,
    );
  }
}

ButtonStyle outlinedButtonStyle(Color borderColor) {
  return OutlinedButton.styleFrom(
    elevation: 0,
    side: BorderSide(
      color: borderColor,
      width: 1,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(9),
    ),
  );
}

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    Key? key,
    required this.size,
    required this.bodyText,
    required this.headerText,
    required this.urlLaunch,
  }) : super(key: key);

  final Size size;
  final String bodyText;
  final String headerText;
  final String urlLaunch;

  void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.03, vertical: size.height * 0.05),
      child: Container(
        width: size.width * 0.9,
        padding: EdgeInsets.all(size.longestSide * 0.015),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$headerText",
              style: TextStyle(
                color: fadedColor,
                fontSize: size.longestSide * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
              width: size.width * 0.9,
              child: Text(
                "$bodyText",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: size.longestSide * 0.012,
                ),
                softWrap: true,
              ),
            ),
            urlLaunch == ""
                ? SizedBox(
                    height: 0,
                    width: 0,
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.015,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          launchUrl(urlLaunch);
                        },
                        child: Text(
                          "Download Now",
                          style: TextStyle(
                            fontSize: size.longestSide * 0.015,
                            color: darkColor,
                          ),
                        ),
                        style: outlinedButtonStyle(darkColor),
                      ),
                    ],
                  )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
