import 'package:apps_by_rhino/constants.dart';
import 'package:flutter/material.dart';

class AppsPage extends StatefulWidget {
  AppsPage({Key? key}) : super(key: key);

  @override
  State<AppsPage> createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  String title = "Impromptu Generator";
  String description =
      "A quick and easy way to practice Impromptu speeches for your upcoming tournaments! \nThis app to help you prepare for your upcoming speech tournaments for Impromptu! It follows the National Speech and Debate Association (NSDA) format for speaking. While the default times follow the NSDA guidelines, you can customize the times based on your requirements. The app can also now convert your speech to text and analyze the confidence levels in your voice! Happy Speaking!";
  String url = "https://smarturl.it/impromptugenerator";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    currentScreen = "apps";

    return Title(
      color: Colors.white,
      title: "Apps",
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [lightColor, mainColor, darkColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              CustomAppBar(),
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Flex(
                    direction:
                        size.width < 450 ? Axis.vertical : Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            title = "Impromptu Generator";
                            description =
                                "A quick and easy way to practice Impromptu speeches for your upcoming tournaments! \nThis app to help you prepare for your upcoming speech tournaments for Impromptu! It follows the National Speech and Debate Association (NSDA) format for speaking. While the default times follow the NSDA guidelines, you can customize the times based on your requirements. The app can also now convert your speech to text and analyze the confidence levels in your voice! Happy Speaking!";
                            url = "https://smarturl.it/impromptugenerator";
                          });
                        },
                        child: Container(
                          decoration: avatarShadow(size, "Impromptu Generator"),
                          child: CircleAvatar(
                            child: Image.asset("assets/impgenlogo.png"),
                            backgroundColor: darkColor,
                            maxRadius: size.longestSide * 0.13,
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            title = "Pristine Screen";
                            description = '''
Want to clean your screen and your keyboard without disrupting your workflow? Pristine Screen is here to help! 

After an easy 3 step process you'll never have a dirty computer again!
1. Click on "Start Cleaning Session"
2. Clean your computer
3. Hold the space bar to exit

Pristine Screen simplifies the process of cleaning your computer. With a quick launch time and a simple interface you can clean your computer in no time!

Pristine Clean keeps your computer clean!
                            ''';
                            url = "https://smarturl.it/pristinescreen";
                          });
                        },
                        child: Container(
                          decoration: avatarShadow(size, "Pristine Screen"),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.asset("assets/pslogo.png"),
                            ),
                            backgroundColor: darkColor,
                            maxRadius: size.longestSide * 0.13,
                          ),
                        ),
                      ),
                      MouseRegion(
                        onEnter: (_) {
                          setState(() {
                            title = "Thank You";
                            description = '''
Thank You is a goal oriented minimalistic donation tracker that helps keep track of your donations throughout the year. 

Tracking your donations shouldn't be so hard. It should be simple quick and easy. Small donations or large donations, Thank You can handle it all!

Thank You encourages users to fulfill their set donation goal each year with its goal oriented mindset. With many tools to help you budget your donations throughout the year and constant updates you will never find yourself needing another donation tracker. Thank You also includes a variety of features that help users keep track of individual donations such as pictures/receipts, custom dates, variety of currencies, and much more! Alongside this we include our safe storage system which requires no login and saves everything to your device. All of this combined with our minimalist interface makes Thank You your one stop destination for keeping track of your donations throughout the year. Hope you enjoy and thank you for giving back to your community!

How it works:
1. Enter your annual donation goal
2. Add your recent donations
3. Keep track of your donations throughout the year with Thank You’s various features
4. Sit back and let the Thank You do the rest

**Thank You is not a donation transaction app, but a donation tracker.**                            
                            ''';
                            url = "https://smarturl.it/thankyouapp";
                          });
                        },
                        child: Container(
                          decoration: avatarShadow(size, "Thank You"),
                          child: CircleAvatar(
                            child: Image.asset("assets/tylogo.png"),
                            backgroundColor: darkColor,
                            maxRadius: size.longestSide * 0.13,
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
            ],
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
