import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ladorg/providers/locale_provider.dart';
import 'package:ladorg/screens/contact%20us/contactuspage.dart';
import 'package:provider/provider.dart';


class HomeContactUsWidget extends StatefulWidget {
  const HomeContactUsWidget({Key? key}) : super(key: key);

  @override
  State<HomeContactUsWidget> createState() => _HomeContactUsWidgetState();
}

class _HomeContactUsWidgetState extends State<HomeContactUsWidget> {

  @override
  Widget build(BuildContext context) {
    final localeprovider = Provider.of<LocaleProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveHelper(
      web: Container(
        height: height * 0.8,
        width: width,
        padding: EdgeInsets.symmetric(vertical: height * 0.05),
        child: Column(
          children: [
            Text(
             AppLocalizations.of(context)!.contactus,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width * 0.3,
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
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/phone_icon.png',
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                      ),
                      Text(
                        "+961 76 332 526",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.3,
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
                            "assets/images/email_icon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          )),
                      Text(
                        "lad-ngo@outlook.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
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
                            "assets/images/support_icon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/facebook.png')),
                          ),
                          TextButton(
                              onPressed: (){},
                              child: Text("Facebook",style: TextStyle(
                                  color: Colors.black,
                                fontWeight: FontWeight.bold,
                                    fontSize: 12,),),
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                          Container(
                            width: width*0.005,
                          ),
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/instagram.png')),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("Instagram",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,),),
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                          Container(
                            width: width*0.005,
                          ),
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/linkedin.png')
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("LinkedIn",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,),),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                alignment: (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: height * 0.08,
            ),
            Container(
              width: width * 0.2,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                },
                child: Text(
                  AppLocalizations.of(context)!.more,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff118AB2),
                ),
              ),
            ),
          ],
        ),
      ),
      mobile: Container(
        height: height * 1.4,
        width: width,
        padding: EdgeInsets.symmetric(vertical: height * 0.05),
        child: Column(
          children: [
            Text(
             AppLocalizations.of(context)!.contactus,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: height * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
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
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('assets/images/phone_icon.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "+961 76 332 526",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.05,
                ),
                Container(
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
                            "assets/images/email_icon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          )),
                      Text(
                        "lad-ngo@outlook.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.05,
                ),
                Container(
                  width: width * 0.8,
                  height: height * 0.3,
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
                            "assets/images/support_icon.png",
                            width: 80,
                            height: 80,
                            fit: BoxFit.fill,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/facebook.png')),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("Facebook",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,),),
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                          Container(
                            width: width*0.005,
                          ),
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/instagram.png')),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("Instagram",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,),),
                            style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          ),
                          Container(
                            width: width*0.005,
                          ),
                          SizedBox(
                            width: 17,
                            height: 17,
                            child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Image.asset('assets/images/linkedin.png')
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: Text("LinkedIn",style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,),),
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                alignment: (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: height * 0.08,
            ),
            Container(
              width: width * 0.4,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                },
                child: Text(
                  AppLocalizations.of(context)!.more,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff118AB2)),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
