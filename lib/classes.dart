import 'package:apps_by_rhino/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ClassesPage extends StatefulWidget {
  const ClassesPage({Key? key}) : super(key: key);

  @override
  State<ClassesPage> createState() => _ClassesPageState();
}

class _ClassesPageState extends State<ClassesPage> {
  String title = "Week 1";

  String description = '''
Lecture: Introduction, Basic Set Up and debrief on Flutter.
Hand-on: Creating a simple "Hello World" app and to play around with styling and other basic components.
  ''';

  String url = "";

  void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    currentScreen = "classes";

    return Title(
      color: Colors.white,
      title: "Summer Classes",
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
              SliverAppBar(
                leading: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.fitHeight,
                ),
                elevation: 0,
                backgroundColor: Colors.transparent,
                expandedHeight: size.height * 0.4,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 3,
                  collapseMode: CollapseMode.parallax,
                  title: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.quicksand(
                        fontSize: size.longestSide * 0.03,
                        color: darkColor,
                      ),
                      children: [
                        TextSpan(
                            text: "Summer ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            )),
                        TextSpan(
                          text: "Classes",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: navBar,
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.06),
                          width: size.longestSide * 0.2,
                          child: OutlinedButton(
                            onPressed: () {
                              launchUrl(
                                  'https://docs.google.com/forms/d/e/1FAIpQLSdTvDNFR4gpxYJnt7_aZe3J5fAW8htnGUkbGCdOtMKcVJpnJw/viewform?usp=sf_link');
                            },
                            child: Text(
                              "Enroll Now",
                              style: TextStyle(
                                fontSize: size.longestSide * 0.025,
                                color: darkColor,
                              ),
                            ),
                            style: outlinedButtonStyle(darkColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DatesCard(
                          size: size,
                          month: "July",
                          date: "17",
                        ),
                        DatesCard(
                          size: size,
                          month: "July",
                          date: "24",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DatesCard(
                          size: size,
                          month: "June",
                          date: "26",
                        ),
                        DatesCard(
                          size: size,
                          month: "July",
                          date: "10",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.09,
                    ),
                    Text(
                      "Curriculum",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontSize: size.longestSide * 0.045,
                        color: darkColor,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              title = "Week 1";
                              description = '''
Lecture: Introduction, Basic Set Up and debrief on Flutter.
Hand-on: Creating a simple "Hello World" app and to play around with styling and other basic components.
                              ''';
                              url = "";
                            });
                          },
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                title = "Week 1";
                                description = '''
Lecture: Introduction, Basic Set Up and debrief on Flutter.
Hand-on: Creating a simple "Hello World" app and to play around with styling and other basic components.
                              ''';
                                url = "";
                              });
                            },
                            child: Container(
                              decoration: avatarShadow(size, "Week 1"),
                              child: CircleAvatar(
                                child: Text(
                                  "Week\n1",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: darkColor,
                                    fontSize: size.longestSide * 0.03,
                                  ),
                                ),
                                backgroundColor: mainColor,
                                maxRadius: size.width * 0.13,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              title = "Week 2";
                              description = '''
Lecture: State Management, explanation of component library!
Hand-on: Create a simple clicker app and customize it using 'components' from the library.
                              ''';
                              url = "";
                            });
                          },
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                title = "Week 2";
                                description = '''
Lecture: State Management, explanation of component library!
Hand-on: Create a simple clicker app and customize it using 'components' from the library.
                              ''';
                                url = "";
                              });
                            },
                            child: Container(
                              decoration: avatarShadow(size, "Week 2"),
                              child: CircleAvatar(
                                child: Text(
                                  "Week\n2",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: darkColor,
                                    fontSize: size.longestSide * 0.03,
                                  ),
                                ),
                                backgroundColor: mainColor,
                                maxRadius: size.width * 0.13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              title = "Week 3";
                              description = '''
Lecture: Flutter Data Structures, and UI layouts!
Hand-on: Add code to clicker app to switch between a random set of images using lists or the clicker app.
                              ''';
                              url = "";
                            });
                          },
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                title = "Week 3";
                                description = '''
Lecture: Flutter Data Structures, and UI layouts!
Hand-on: Add code to clicker app to switch between a random set of images using lists or the clicker app.
                              ''';
                                url = "";
                              });
                            },
                            child: Container(
                              decoration: avatarShadow(size, "Week 3"),
                              child: CircleAvatar(
                                child: Text(
                                  "Week\n3",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: darkColor,
                                    fontSize: size.longestSide * 0.03,
                                  ),
                                ),
                                backgroundColor: mainColor,
                                maxRadius: size.width * 0.13,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              title = "Week 4";
                              description = '''
Lecture: Discuss design and themes throughout app!
Hands-On: Create on basic timer app using themes and component libraries!
Special: Introduce mentorship program!
                              ''';
                              url = "";
                            });
                          },
                          child: MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                title = "Week 4";
                                description = '''
Lecture: Discuss design and themes throughout app!
Hands-On: Create on basic timer app using themes and component libraries!
Special: Introduce mentorship program!
                              ''';
                                url = "";
                              });
                            },
                            child: Container(
                              decoration: avatarShadow(size, "Week 4"),
                              child: CircleAvatar(
                                child: Text(
                                  "Week\n4",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: darkColor,
                                    fontSize: size.longestSide * 0.03,
                                  ),
                                ),
                                backgroundColor: mainColor,
                                maxRadius: size.width * 0.13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    DescriptionCard(
                      size: size,
                      bodyText: description,
                      headerText: title,
                      urlLaunch: url,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration avatarShadow(Size size, String check) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.13),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[900]!,
            blurRadius: title == "$check" ? 10 : 0,
            offset: title == "$check" ? Offset(0, 10) : Offset(0, 0),
          ),
        ]);
  }
}

class DatesCard extends StatelessWidget {
  const DatesCard({
    Key? key,
    required this.size,
    required this.month,
    required this.date,
  }) : super(key: key);

  final Size size;
  final String month;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.longestSide * 0.1,
      height: size.longestSide * 0.1,
      decoration: BoxDecoration(
          color: lightColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[900]!, blurRadius: 10, offset: Offset(0, 10))
          ]),
      padding: EdgeInsets.all(size.longestSide * 0.01),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: GoogleFonts.quicksand(
            fontSize: size.longestSide * 0.03,
            color: darkColor,
          ),
          children: [
            TextSpan(
                text: "$month\n",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                )),
            TextSpan(
              text: "$date",
              style: TextStyle(
                  color: Colors.white70, fontSize: size.longestSide * 0.04),
            ),
          ],
        ),
      ),
    );
  }
}
