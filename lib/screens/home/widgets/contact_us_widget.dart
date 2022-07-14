import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeContactUsWidget extends StatefulWidget {
  const HomeContactUsWidget({Key? key}) : super(key: key);

  @override
  State<HomeContactUsWidget> createState() => _HomeContactUsWidgetState();
}

class _HomeContactUsWidgetState extends State<HomeContactUsWidget> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveHelper(
      web: Container(
        height: height * 0.7,
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

            Container(
              height: height * 0.08,
            ),
            Container(
              width: width * 0.2,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
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
        height: height * 0.7,
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

            Container(
              height: height * 0.08,
            ),
            Container(
              width: width * 0.4,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
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
