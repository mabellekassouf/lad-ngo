import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/responsive_helper.dart';
import '../widgets/footer.dart';
import '../widgets/navigation_bar.dart';
class AboutUsScreen extends StatefulWidget {
  final String scrollLocation;
  const AboutUsScreen({
    Key? key,
    required this.scrollLocation,
  }) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
final ScrollController _scrollController = ScrollController();

scrollToPlaceWeb(value) {
  switch(value){
    case "Main":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          0.0,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Mission":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          1100,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Vision":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          1150,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Goals":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          900,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "WhoWeAre":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          450,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
  }
}
scrollToPlaceMob(value) {
  switch(value){
    case "Main":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          0.0,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Mission":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          1900,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Vision":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          2000,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "Goals":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          1800,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
    case "WhoWeAre":{
      Timer(
        Duration(seconds: 0), () => _scrollController.animateTo(
          550,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300)),
      );
    }
    break;
  }
}

@override
void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if(MediaQuery.of(context).size.width<768){
      scrollToPlaceMob(widget.scrollLocation);
    }
    else{
      scrollToPlaceWeb(widget.scrollLocation);
    }
    return Scaffold(
      body: SafeArea(
        child: ResponsiveHelper(
          web: Stack(
            children: [
              SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height*0.8,
                              child: Center(
                                child: Text(AppLocalizations.of(context)!.aboutus,
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Color(0xff073B4C),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height ,
                              width: width,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: width * 0.1,vertical: height*0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:width*0.5,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.whoweare,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.03,),
                                        Text(
                                         AppLocalizations.of(context)!.whowearetextpartone,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Container(
                                          height: height * 0.05,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.whowearetextparttwo,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:width*0.3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        //INSERT IMAGES HERE
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: height * 0.9,
                              width: width,
                              padding: EdgeInsets.symmetric(horizontal: width * 0.1,vertical: height*0.02),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:width*0.5,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.ourgoals,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02,),
                                        Text(
                                          AppLocalizations.of(context)!.ourgoalstext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Container(height: height*0.05,),
                                        Text(
                                          AppLocalizations.of(context)!.mission,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02,),
                                        Text(
                                          AppLocalizations.of(context)!.ourmissiontext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Container(height: height*0.05,),
                                        Text(
                                          AppLocalizations.of(context)!.vision,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02),
                                        Text(
                                          AppLocalizations.of(context)!.ourvisiontext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:width*0.3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //images here
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(),
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
                controller: _scrollController,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: height*0.8,
                              child: Center(
                                child: Text(AppLocalizations.of(context)!.aboutus,
                                  style: TextStyle(
                                    fontSize: 28,
                                    color: Color(0xff073B4C),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: height*1.5,
                              width: width,
                              color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: width * 0.1,vertical: height*0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:width*0.7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.whoweare,
                                          style: TextStyle(fontSize: 24),
                                        ),
                                        Container(height: height*0.03,),
                                        Text(
                                          AppLocalizations.of(context)!.whowearetextpartone,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Container(
                                          height: height * 0.05,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!.whowearetextparttwo,
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:width*0.7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(height: height*0.5,)
                                        //INSERT IMAGES HERE
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: height * 1.5,
                              width: width,
                              padding: EdgeInsets.symmetric(horizontal: width * 0.1,vertical: height*0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width:width*0.7,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!.ourgoals,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02,),
                                        Text(
                                          AppLocalizations.of(context)!.ourgoalstext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Container(height: height*0.05,),
                                        Text(
                                          AppLocalizations.of(context)!.mission,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02,),
                                        Text(
                                          AppLocalizations.of(context)!.ourmissiontext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        Container(height: height*0.05,),
                                        Text(
                                          AppLocalizations.of(context)!.vision,
                                          style: TextStyle(fontSize: 28),
                                        ),
                                        Container(height: height*0.02),
                                        Text(
                                          AppLocalizations.of(context)!.ourvisiontext,
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:width*0.4,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(height: height *0.5,)
                                        //images here
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(),
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
