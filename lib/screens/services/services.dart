import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:ladorg/screens/widgets/footer.dart';
import 'package:ladorg/screens/widgets/navigation_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
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
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.ourservices,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height*0.6,
                      color: Colors.white,
                      child: Center(
                        child: Text("No current services available",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    //content here
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
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.ourservices,
                          style: TextStyle(
                            fontSize: 28,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height*0.6,
                      color: Colors.white,
                      child: Center(
                        child: Text("No current donation ways available",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff073B4C),
                          ),
                        ),
                      ),
                    ),
                    //content here
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
