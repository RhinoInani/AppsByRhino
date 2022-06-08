import 'package:flutter/material.dart';

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
  NavBarButton(title: 'About Me', checkNamed: 'home', pushNamed: '/'),
  NavBarButton(title: 'Apps', checkNamed: 'apps', pushNamed: '/apps'),
  NavBarButton(
      title: 'Websites', checkNamed: 'websites', pushNamed: '/websites'),
  NavBarButton(title: 'Classes', checkNamed: 'home', pushNamed: '/'),
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
