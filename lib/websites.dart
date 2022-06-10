import 'package:apps_by_rhino/constants.dart';
import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

class WebsitesPage extends StatefulWidget {
  WebsitesPage({Key? key}) : super(key: key);

  @override
  State<WebsitesPage> createState() => _WebsitesPageState();
}

class _WebsitesPageState extends State<WebsitesPage> {
  String title = "MV Bookshelf";
  String description = '''
Monta Vista Bookshelf is a club at Monta Vista High School which aims to educate and demonstrate students that reading is fun and interesting!
This is done through exciting events, and a bi-weekly reading schedule that engages and interests students in reading!
Alongside this we have also partnered with other book organizations to create bookdrives and so much more!

This website will show you all the information regarding MV Bookshelf!
                                    ''';
  String url = "https://mvbookshelf.com";

  @override
  Widget build(BuildContext context) {
    Tween<double> buildFadeTween() {
      return Tween<double>(
        begin: 0,
        end: 1,
      );
    }

    Size size = MediaQuery.of(context).size;
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
          body: AnimateIfVisibleWrapper(
            child: CustomScrollView(
              slivers: [
                CustomAppBar(),
                SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    AnimateIfVisible(
                      key: Key('item0'),
                      duration: Duration(milliseconds: 700),
                      builder: (
                        context,
                        Animation<double> animation,
                      ) =>
                          FadeTransition(
                        opacity: buildFadeTween().animate(animation),
                        child: Flex(
                          direction: size.width < 450
                              ? Axis.vertical
                              : Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  title = "MV Bookshelf";
                                  description = '''
Monta Vista Bookshelf is a club at Monta Vista High School which aims to educate and demonstrate students that reading is fun and interesting!
This is done through exciting events, and a bi-weekly reading schedule that engages and interests students in reading!
Alongside this we have also partnered with other book organizations to create bookdrives and so much more!

This website will show you all the information regarding MV Bookshelf!
                                      ''';
                                  url = "https://mvbookshelf.com";
                                });
                              },
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    title = "MV Bookshelf";
                                    description = '''
Monta Vista Bookshelf is a club at Monta Vista High School which aims to educate and demonstrate students that reading is fun and interesting!
This is done through exciting events, and a bi-weekly reading schedule that engages and interests students in reading!
Alongside this we have also partnered with other book organizations to create bookdrives and so much more!

This website will show you all the information regarding MV Bookshelf!
                                      ''';
                                    url = "https://mvbookshelf.com";
                                  });
                                },
                                child: Container(
                                  decoration:
                                      avatarShadow(size, "MV Bookshelf"),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/bslogo.png"),
                                    backgroundColor: darkColor,
                                    maxRadius: size.longestSide * 0.13,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  title = "Peru Education Movement";
                                  description = '''
Project Peru was initially established as part of the Learn Care Share initiative(501(c) non profit) to offer free English classes to a few students from low-income families in a small town of Huariaca, Peru. This project was started by Mercedes Canham, a Peru Native, with the help of a few Bay Area high school students who are fluent in Spanish. Soon Ms. Canhan realized that she needed to involve more tutors to scale up this program and benefit more kids in Peru. At the pandemic's beginning, Canham reached out to us and asked if a few students from Monta Vista could teach more kids from Peruvian villages over Zoom.

The website below is the official website for PEM and hosts all their resources and information!
                                    ''';
                                  url = "https://perueducationmovement.org";
                                });
                              },
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    title = "Peru Education Movement";
                                    description = '''
Project Peru was initially established as part of the Learn Care Share initiative(501(c) non profit) to offer free English classes to a few students from low-income families in a small town of Huariaca, Peru. This project was started by Mercedes Canham, a Peru Native, with the help of a few Bay Area high school students who are fluent in Spanish. Soon Ms. Canhan realized that she needed to involve more tutors to scale up this program and benefit more kids in Peru. At the pandemic's beginning, Canham reached out to us and asked if a few students from Monta Vista could teach more kids from Peruvian villages over Zoom.

The website below is the official website for PEM and hosts all their resources and information!
                                    ''';
                                    url = "https://perueducationmovement.org";
                                  });
                                },
                                child: Container(
                                  decoration: avatarShadow(
                                      size, "Peru Education Movement"),
                                  child: CircleAvatar(
                                    child: ClipOval(
                                      child: Image.asset("assets/pemlogo.png"),
                                    ),
                                    backgroundColor: darkColor,
                                    maxRadius: size.longestSide * 0.13,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  title = "Classic Awareness for Teens";
                                  description = '''
Classic Awareness for Teens (CAFT) is meant to inspire and teach middle schoolers and teens about classic american literature. 
This is a 501(c) non-profit that has active events and lots more incoming so stay tuned! 

Information about the site can be accessed below! 
                                    ''';
                                  url = "https://classicaft.web.app";
                                });
                              },
                              child: MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    title = "Classic Awareness for Teens";
                                    description = '''
Classic Awareness for Teens (CAFT) is meant to inspire and teach middle schoolers and teens about classic american literature. 
This is a 501(c) non-profit that has active events and lots more incoming so stay tuned! 

Information about the site can be accessed below!          
                                    ''';
                                    url = "https://classicaft.web.app";
                                  });
                                },
                                child: Container(
                                  decoration: avatarShadow(
                                      size, "Classic Awareness for Teens"),
                                  child: CircleAvatar(
                                    child: Image.asset("assets/caftlogo.png"),
                                    backgroundColor: darkColor,
                                    maxRadius: size.longestSide * 0.13,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DescriptionCard(
                      size: size,
                      bodyText: description,
                      headerText: title,
                      urlLaunch: url,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration avatarShadow(Size size, String check) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(size.longestSide * 0.13),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: title == "$check" ? 20 : 0,
          )
        ]);
  }
}
