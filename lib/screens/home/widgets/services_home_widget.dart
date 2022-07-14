import 'package:flutter/material.dart';
import 'package:ladorg/helpers/responsive_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../models/servicesItem.dart';
import '../../../providers/locale_provider.dart';

class HomeServicesWidget extends StatefulWidget {
  const HomeServicesWidget({Key? key}) : super(key: key);

  @override
  State<HomeServicesWidget> createState() => _HomeServicesWidgetState();
}

class _HomeServicesWidgetState extends State<HomeServicesWidget> {

  final _scrollController = ScrollController();
  final double _width = 320;
  int _destinationIndex = 0;

  void _scrollToIndex(index) {
    _scrollController.animateTo(_width * index,
        duration: const Duration(seconds: 2), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    final localeprovider = Provider.of<LocaleProvider>(context, listen: true);
    List<ServicesItem> items = [
      ServicesItem(
          urlImage: 'assets/images/trainingandbuildingcapacity_icon.png',
          title: AppLocalizations.of(context)!.trainingandbuildingcapacity),
      ServicesItem(
          urlImage: 'assets/images/academic_support_icon.png',
          title: AppLocalizations.of(context)!.academicsupport),
      ServicesItem(urlImage: 'assets/images/awareness_icon.png',
          title: AppLocalizations.of(context)!.awareness),
      ServicesItem(urlImage: 'assets/images/advocacy_icon.png',
          title: AppLocalizations.of(context)!.advocacy),
      ServicesItem(
          urlImage: 'assets/images/psychological_icon.png',
          title: AppLocalizations.of(context)!.psychosocialsupport),
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return ResponsiveHelper(
      web: Container(
        height: height * 0.7,
        width: width,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: height * 0.05),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.ourservices,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: height * 0.1,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      setState(() {
                        if (_destinationIndex != 0) {
                          _destinationIndex = _destinationIndex - 1;
                        }
                      });
                      _scrollToIndex(_destinationIndex);
                    },
                  ),
                  Container(
                    width: width * 0.79,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
                        itemCount: items.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: _width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 280,
                                    height: 400,
                                    padding: EdgeInsets.only(
                                        left: 10,
                                    right: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 200,
                                            child: Text(
                                              items[index].title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                     right: (localeprovider.locale.languageCode.toString()=="en")?1:210,
                                    top: 20,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          items[index].urlImage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      setState(() {
                        _destinationIndex = _destinationIndex + 1;
                      });
                      _scrollToIndex(_destinationIndex);
                    },
                  )
                ],
              ),
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
                    AppLocalizations.of(context)!.moreservices,
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
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: height * 0.05),
        child: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.ourservices,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              height: height * 0.1,
            ),
            Container(
              width: width * 0.9,
              height: height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      setState(() {
                        if (_destinationIndex != 0) {
                          _destinationIndex = _destinationIndex - 1;
                        }
                      });
                      _scrollToIndex(_destinationIndex);
                    },
                  ),
                  Container(
                    width: width * 0.65,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _scrollController,
                        itemCount: items.length,
                        itemBuilder: (_, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: _width,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 280,
                                    height: 400,
                                    padding: EdgeInsets.only(left: 10,right: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.grey,
                                        ),
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                            width: 200,
                                            child: Text(
                                              items[index].title,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right: (localeprovider.locale.languageCode.toString()=="en")?1:210,
                                    top: 20,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          items[index].urlImage,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      setState(() {
                        _destinationIndex = _destinationIndex + 1;
                      });
                      _scrollToIndex(_destinationIndex);
                    },
                  )
                ],
              ),
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
                  "More Services",
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
