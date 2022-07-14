import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../helpers/responsive_helper.dart';
import '../widgets/footer.dart';
import '../widgets/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
class MediaCenterScreen extends StatefulWidget {
  const MediaCenterScreen({Key? key}) : super(key: key);

  @override
  State<MediaCenterScreen> createState() => _MediaCenterScreenState();
}

class _MediaCenterScreenState extends State<MediaCenterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();




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
                      height: height*0.8,
                      color: Color(0xffFFD166),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.mediacenter,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    //INSERT CONTENT HERE
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
                    Container(height: height*0.15,),
                    Container(
                      height: height*0.4,
                      color: Color(0xffFFD166),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.mediacenter,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    //CONTENT HERE
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
