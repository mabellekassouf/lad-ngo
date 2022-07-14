import 'dart:ui';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:ladorg/screens/about%20us/about_us.dart';
import 'package:ladorg/screens/activities%20and%20programs/activitiesandprograms.dart';
import 'package:ladorg/screens/contact%20us/contactuspage.dart';
import 'package:ladorg/screens/home/homepage.dart';
import 'package:ladorg/screens/media%20center/mediacenter.dart';
import 'package:ladorg/screens/widgets/language_picker_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../helpers/constants.dart';
class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  void _launch(_url) async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    final locale = Localizations.localeOf(context);
    return ResponsiveHelper(
        mobile:Container(
          height: height*0.15,
          color: Colors.white.withOpacity(0.95),
          padding: EdgeInsets.symmetric(horizontal: width*0.02),
          child:
          Padding(
            padding: EdgeInsets.only(top: height*0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Image.asset(Constants.CompanyLogo,
                    width: 100,
                    fit: BoxFit.fill,),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePageScreen()
                        )
                    );
                  },),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        _NavBarItemMin(title: AppLocalizations.of(context)!.home),
                        _NavBarItemMin(title: AppLocalizations.of(context)!.aboutus),
                        _NavBarItemMin(title: AppLocalizations.of(context)!.activitiesandprograms),
                      ],
                    ),
                    Container(width: width*0.05,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        _NavBarItemMin(title: AppLocalizations.of(context)!.mediacenter),

                        _NavBarItemMin(title: AppLocalizations.of(context)!.contactus),
                      ],
                    ),
                  ],
                ),
                Container(),
                Row(
                  children: [
                    LanguagePickerWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
        web: Container(
          height: height*0.15,
          color: Colors.white.withOpacity(0.95),
          padding: EdgeInsets.symmetric(horizontal: width*0.02),
          child:
          Padding(
            padding: EdgeInsets.only(top: height*0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                    child: Image.asset(Constants.CompanyLogo,
                    width: 200,

                    fit: BoxFit.fill,),
                onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePageScreen()
                        )
                    );
                },),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _NavBarItemMax(title: AppLocalizations.of(context)!.home),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    _NavBarItemMax(title: AppLocalizations.of(context)!.aboutus),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    _NavBarItemMax(title: AppLocalizations.of(context)!.activitiesandprograms),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    _NavBarItemMax(title: AppLocalizations.of(context)!.mediacenter),
                    SizedBox(
                      width: width*0.02,
                    ),
                    Text(
                      "|",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                      ),
                    ),
                    SizedBox(
                      width: width*0.02,
                    ),
                    _NavBarItemMax(title: AppLocalizations.of(context)!.contactus),
                  ],
                ),

                Container(),
                Row(
                  children: [
                  LanguagePickerWidget(),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}

class _NavBarItemMax extends StatelessWidget {
  final String title;
  const _NavBarItemMax({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
          title,
        style: TextStyle(
            fontSize: 12,
        fontFamily: 'RobotoSerif',
        color: Colors.black),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: (){
        if(title== AppLocalizations.of(context)!.home){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePageScreen()));
        }
        if(title== AppLocalizations.of(context)!.contactus){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactUsScreen()));
        }
        if(title== AppLocalizations.of(context)!.aboutus){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutUsScreen()));
        }
        if(title== AppLocalizations.of(context)!.mediacenter){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const MediaCenterScreen()));
        }
        if(title== AppLocalizations.of(context)!.activitiesandprograms){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ActivitiesAndProgramsScreen()));
        }
      },
    );
  }
}
class _NavBarItemMin extends StatelessWidget {
  final String title;
  const _NavBarItemMin({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        title,
        style: TextStyle(
            fontSize: 12,
            fontFamily: 'RobotoSerif',
            color: Colors.black),
      ),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size.zero,
      ),
      onPressed: (){
        if(title== AppLocalizations.of(context)!.home){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePageScreen()));
        }
        if(title== AppLocalizations.of(context)!.contactus){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ContactUsScreen()));
        }
        if(title== AppLocalizations.of(context)!.aboutus){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AboutUsScreen()));
        }
        if(title== AppLocalizations.of(context)!.mediacenter){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const MediaCenterScreen()));
        }
        if(title== AppLocalizations.of(context)!.activitiesandprograms){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ActivitiesAndProgramsScreen()));
        }
      },
    );
  }
}

