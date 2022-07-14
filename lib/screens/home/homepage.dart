import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:ladorg/screens/about%20us/about_us.dart';
import 'package:ladorg/screens/home/widgets/contact_us_widget.dart';
import 'package:ladorg/screens/home/widgets/news_home_widget.dart';
import 'package:ladorg/screens/widgets/footer.dart';
import 'package:ladorg/screens/widgets/navigation_bar.dart';
import 'package:ladorg/screens/home/widgets/services_home_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ResponsiveHelper(
          web: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.8,
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.welcomemessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.6,
                      color: Colors.white,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.28,
                                height: height * 0.4,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/goals_icon.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      AppLocalizations.of(context)!.ourgoals,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.28,
                                height: height * 0.4,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/mission_icon.png",
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.mission,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.28,
                                height: height * 0.4,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        "assets/images/vision_icon.png",
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      AppLocalizations.of(context)!.vision,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.7,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.whoweare,
                            style: TextStyle(fontSize: 40),
                          ),
                          Container(
                            width: width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!
                                      .whowearetext_home,
                                ),
                                Container(
                                  height: height * 0.05,
                                ),
                                Container(
                                  width: width * 0.1,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const AboutUsScreen()));
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!.more,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xff118AB2)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    HomeServicesWidget(),
                    // HomeNewsWidget(),
                    // HomePhotoGalleryWidget(),
                    // HomeActivitiesProgramsWidget(),
                    HomeContactUsWidget(),
                    FooterWidget(),
                  ],
                ),
              ),
              NavigationBarWidget()
            ],
          ),
          mobile: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: height * 0.8,
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.welcomemessage,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 1.2,
                      color: Colors.white,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.8,
                                height: height * 0.3,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/goals_icon.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      AppLocalizations.of(context)!.ourgoals,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.8,
                                height: height * 0.3,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/mission_icon.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      AppLocalizations.of(context)!.mission,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()));
                              },
                              child: Container(
                                width: width * 0.8,
                                height: height * 0.3,
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.01),
                                decoration: BoxDecoration(
                                  color: Color(0xffFCFCFC),
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          "assets/images/vision_icon.png",
                                          width: 80,
                                          height: 80,
                                          fit: BoxFit.fill,
                                        )),
                                    Text(
                                      AppLocalizations.of(context)!.vision,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.55,
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.whoweare,
                            style: TextStyle(fontSize: 32),
                          ),
                          Container(
                            height: height * 0.03,
                          ),
                          Text(
                            AppLocalizations.of(context)!.whowearetext_home,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            height: height * 0.05,
                          ),
                          Container(
                            width: width * 0.4,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const AboutUsScreen()));
                              },
                              child: Text(
                                AppLocalizations.of(context)!.more,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Color(0xff118AB2)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(10.0),
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    HomeServicesWidget(),
                    HomeContactUsWidget(),
                    FooterWidget(),
                  ],
                ),
              ),
              NavigationBarWidget()
            ],
          ),
        ),
      ),
      floatingActionButton: ResponsiveHelper(
        web: IconButton(
          iconSize: 65,
          icon: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/phone_icon.png')),
          onPressed: () {},
        ),
        mobile: IconButton(
          iconSize: 50,
          icon: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/phone_icon.png')),
          onPressed: () {},
        ),
      ),
    );
  }
}
