import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:Seen/ui/views/home/widgets/navigation_drawer.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final _routerService = locator<RouterService>();
    //for within profile
    PageController pageController2 = PageController();
    double _currentPageValue2 = 0;
    pageController2.addListener(() {
      _currentPageValue2 = pageController2.page!;
    });
    List<String> buttonTitles = [
      "Featured",
      "Hot Girls",
      "Bi-sexual",
      "Big Ass",
      "Bursty",
      "Chubby",
      "Toys",
      "Tour",
      "Private View",
    ];

    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            toolbarHeight: 60,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            title: Text('R'),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                      'This is a rounded AlertDialog in Flutter. AlertDialog in Flutter.'),
                                  YMargin(20),
                                 
                                ],
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  // Close the AlertDialog
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(
                      FeatherIcons.search,
                      color: Colors.white,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: SeenButton(
                  width: 90,
                  height: 35,
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  buttonText: "Sign up",
                  textColor: Colors.black,
                ),
              )
            ],
            title: Row(
              children: [
                SvgPicture.asset(
                  "assets/images/logoMain.svg",
                  height: 20,
                  color: Colors.white,
                ),
              ],
            ),
            iconTheme: IconThemeData(
                color: Colors.white, size: 30), // Set the icon color to white
          ),
          drawer: NavigationDrawerWidget(),
          body: MainBodyBgWeb(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    YMargin(15),
                    Container(
                      width: screenWidth,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: buttonTitles.asMap().entries.map((entry) {
                            int index = entry.key;
                            String title = entry.value;
                            return GestureDetector(
                              onTap: () {
                                model.setCurrentPage(index.toDouble());
                                pageController2.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 250),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: model.currentPage == index
                                      ? AppColors.primaryPink
                                      : const Color(0xff2B2B2B),
                                  border: Border.all(
                                      width: 1,
                                      color: AppColors.primaryPink
                                          .withOpacity(0.5)),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                child: Center(
                                  child: customText(
                                    text: title,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    textColor: model.currentPage == index
                                        ? AppColors.white
                                        : const Color(0xff999999),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    YMargin(20),
                    customText(
                        text: "Fans Favorite",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        textdecoration: TextDecoration.underline,
                        textColor: AppColors.white),
                    YMargin(15),
                    Container(
                      height: 120,
                      width: screenWidth,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 80,
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 15),
                                      padding: EdgeInsets.all(10),
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xff2B2B2B),
                                        border: Border.all(
                                            width: 3,
                                            color: AppColors.primaryPink),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/naked.jpg"),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 10,
                                      bottom: 0,
                                      child: Container(
                                        height: 30,
                                        width: 30,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          color: AppColors.primaryPink,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.videocam_sharp,
                                            size: 20,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              YMargin(10),
                              customText(
                                  text: "Thick Sicko",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontstyle: FontStyle.italic,
                                  textColor: AppColors.primary),
                            ],
                          );
                        },
                      ),
                    ),
                    YMargin(20),
                    Expanded(
                      child: Container(
                        //color: Colors.amber,
                        child: PageView(
                          pageSnapping: true,
                          controller: pageController2,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    padding: EdgeInsets.all(10),
                                    height: screenHeight / 2.3,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Color(0xff2B2B2B),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/naked.jpg"),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    _routerService.replaceWith(
                                                        const EscortProfileViewRoute());
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 8,
                                                            horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.black45,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors.white,
                                                        ),
                                                        XMargin(5),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                customText(
                                                                  text:
                                                                      "Alexia Bumbum",
                                                                  fontSize: 14,
                                                                  textColor:
                                                                      Colors
                                                                          .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                                XMargin(3),
                                                                SvgPicture
                                                                    .asset(
                                                                  "assets/images/verified.svg",
                                                                  height: 11,
                                                                  color: AppColors
                                                                      .primaryPink,
                                                                )
                                                              ],
                                                            ),
                                                            customText(
                                                              text:
                                                                  "Lagos, Nigeria",
                                                              fontSize: 11,
                                                              textColor:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.black45,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Icon(
                                                      Icons.more_vert_rounded,
                                                      size: 30,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            YMargin(8),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: Colors.black45,
                                                ),
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15.0),
                                                    child: SvgPicture.asset(
                                                      "assets/icons/comment.svg",
                                                      height: 25,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            height: 70,
                                            width: 70,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.black45,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(2.0),
                                              child: index.isOdd
                                                  ? Image.asset(
                                                      "assets/stickers/chubby1.png",
                                                      height: 70,
                                                    )
                                                  : Image.asset(
                                                      "assets/stickers/ass1.png",
                                                      height: 70,
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
