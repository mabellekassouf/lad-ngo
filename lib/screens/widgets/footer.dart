import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ladorg/providers/locale_provider.dart';
import 'package:ladorg/screens/about%20us/about_us.dart';
import 'package:ladorg/screens/contact%20us/contactuspage.dart';
import 'package:ladorg/screens/donate/donate.dart';
import 'package:provider/provider.dart';
import '../../helpers/constants.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeprovider = Provider.of<LocaleProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveHelper(
      mobile: Container(
        width: width,
        height: height * 0.5,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.03),
        color: Color(0xff118AB2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Constants.CompanyLogo,
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      Text(
                       AppLocalizations.of(context)!.footertext,
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                        ),
                      ),
                      Text("WWW.LAD-NGO.ORG",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),)
                    ],
                  ),
                ),
                Container(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.getinvolved,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.makethecommitment,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          color: Colors.white,),
                      ),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.donate,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          color: Colors.white,),
                      ),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DonateScreen()));
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.connect,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.mission,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10,
                          color: Colors.white,),
                      ),
                      style: TextButton.styleFrom(
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight,
                          padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen(scrollLocation: "Mission",)));
                      },
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.contactus,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10,
                          color: Colors.white,),
                      ),
                      style: TextButton.styleFrom(
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight,
                          padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                      },
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/facebook.png')),
                        ),
                        Container(
                          width: width*0.01,
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/instagram.png')),
                        ),
                        Container(
                          width: width*0.01,
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/linkedin.png')),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Divider(),
            Row(
              children: [
                Text(
                  "© Copyright 2022 LAD-NGO",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
      web: Container(
        width: width,
        height: height * 0.55,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.02, vertical: height * 0.03),
        color: Color(0xff118AB2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        Constants.CompanyLogo,
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                      Container(
                        height: height * 0.02,
                      ),
                      Text(
                        AppLocalizations.of(context)!.footertext,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        "WWW.LAD-NGO.ORG",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(),
                Container(),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Container(height: height*0.1,),
                    Text(
                      AppLocalizations.of(context)!.getinvolved,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.makethecommitment,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.donate,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight,
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DonateScreen()));
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start
                  ,
                  children: [
                    Container(height: height*0.1,),
                    Text(
                      AppLocalizations.of(context)!.connect,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.mission,
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight,
                          padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsScreen(scrollLocation: "Mission",)));
                      },
                    ),
                    TextButton(
                      child: Text(
                        AppLocalizations.of(context)!.contactus,
                        style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment:  (localeprovider.locale.languageCode.toString()=="en")?Alignment.centerLeft:Alignment.centerRight),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));
                      },
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/facebook.png')),
                        ),
                        Container(
                          width: width*0.01,
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/instagram.png')),
                        ),
                        Container(
                          width: width*0.01,
                        ),
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: Image.asset('assets/images/linkedin.png')),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Divider(),
            Row(
              children: [
                Text(
                  "© Copyright 2022 LAD-NGO",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
