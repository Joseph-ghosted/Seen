import 'package:Seen/ui/common/app_constants.dart';
import 'package:Seen/ui/views/escort_profile/widgets/expanded_text.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';

import 'escort_profile_viewmodel.dart';

class EscortProfileViewMobile extends ViewModelWidget<EscortProfileViewModel> {
  const EscortProfileViewMobile({super.key});

  @override
  Widget build(BuildContext context, EscortProfileViewModel viewModel) {
    PageController pageController2 = PageController();
    double _currentPageValue2 = 0;
    pageController2.addListener(() {
      _currentPageValue2 = pageController2.page!;
    });

    List<String> buttonTitles = [
      "Gallery",
      "Basic Info",
      "Services",
      "Reviews",
      "Stickers",
    ];

    final List<String> profileSocialTitles = [
      "assets/images/Social Icons.svg",
      "assets/images/Vector.svg",
      "assets/images/Social Icons-1.svg",
    ];
    final List<String> profileActions = [
      "assets/images/subscribe.svg",
      "assets/images/custom.svg",
      "assets/icons/comment.svg",
      "assets/images/coin.svg",
    ];

    final List<String> services = [
      "69 (69 sex position)",
      "Attending corporate parties",
      "Beach parties",
      "Blow Job",
      "CIM (Cum in mouth)",
      "COB (Cum on body)",
      "Couples",
      "DFK (Deep french kissing)",
      "Dinner Dates",
      "Domestic carer",
      "Domination (receiving)",
      "Double Penetration",
      "Erotic massage",
      "Erotic Spanking (giving)",
    ];

    final List<Map<String, dynamic>> reviewList = [
      {
        "title": "Baddest ass so far chaiii :<)",
        "date": "20/08/24",
      },
      {
        "title": "She made me questioned my sexuality :)",
        "date": "23/08/24",
      }
    ];

    final List<String> stickerListImages = [
      "assets/stickers/ass1.png",
      "assets/stickers/assBog.png",
      "assets/stickers/boobs.png",
      "assets/stickers/chubby.png",
      "assets/stickers/chubby1.png",
      "assets/stickers/fatAss.png",
      "assets/stickers/holes.png",
      "assets/stickers/sub.png",
    ];

    return ViewModelBuilder<EscortProfileViewModel>.reactive(
      viewModelBuilder: () => EscortProfileViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: Colors.black,
          // appBar: AppBar(
          //   toolbarHeight: 60,
          //   backgroundColor: Colors.transparent,
          //   elevation: 0,
          //   actions: [
          //     Padding(
          //       padding: const EdgeInsets.only(right: 15.0),
          //       child: SeenButton(
          //         width: 90,
          //         height: 35,
          //         borderRadius: BorderRadius.circular(40),
          //         onTap: () {},
          //         buttonText: "Sign up",
          //         textColor: Colors.black,
          //       ),
          //     )
          //   ],
          //   title: Row(
          //     children: [
          //       SvgPicture.asset(
          //         "assets/images/logoMain.svg",
          //         height: 20,
          //         color: Colors.white,
          //       ),
          //     ],
          //   ),
          //   iconTheme: IconThemeData(
          //       color: Colors.white, size: 30), // Set the icon color to white
          // ),
          // drawer: const NavigationDrawerWidget(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: kdDesktopMaxContentHeight / 1.8,
                        width: kdDesktopMaxContentWidth / 0.1,
                        child: Image.asset(
                          "assets/images/detailEscort.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: kdDesktopMaxContentHeight / 1.8,
                        width: kdDesktopMaxContentWidth / 0.1,
                        decoration: BoxDecoration(
                          //color: Colors.amber,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent, // Transparent at the top
                              Colors
                                  .black38, // Lighter shade of black in the middle
                              Colors.black, // Solid black at the bottom
                            ],
                            stops: [
                              0.0, // Start of the gradient
                              0.3, // Midpoint of the gradient
                              1.0, // End of the gradient
                            ],
                          ),
                        ),
                      ),
                      Container(
                          height: kdDesktopMaxContentHeight / 1.8,
                          width: kdDesktopMaxContentWidth / 0.1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: profileActions
                                        .asMap()
                                        .entries
                                        .map((entry) {
                                      int index = entry.key;
                                      String title = entry.value;

                                      // Define the colors you want to use based on the index
                                      Color borderColor;
                                      if (index == 0) {
                                        borderColor = Colors.green;
                                      } else if (index == 1) {
                                        borderColor = Colors.blue;
                                      } else if (index == 2) {
                                        borderColor = Colors.yellow;
                                      } else {
                                        borderColor = Colors
                                            .green; // Default color for other indices
                                      }

                                      return GestureDetector(
                                        onTap: () {
                                          if (index == 0) {
                                            return;
                                          } else if (index == 1) {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  title: Text(
                                                      'Rounded Dialog Title'),
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter. AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                      ],
                                                    ),
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the AlertDialog
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('Close'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          } else if (index == 2) {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  title: Text(
                                                      'Rounded Dialog Title'),
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter. AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                      ],
                                                    ),
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the AlertDialog
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('Close'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  title: Text(
                                                      'Rounded Dialog Title'),
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter. AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                        Text(
                                                            'This is a rounded AlertDialog in Flutter.'),
                                                        YMargin(20),
                                                      ],
                                                    ),
                                                  ),
                                                  actions: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Close the AlertDialog
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('Close'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          }
                                        },
                                        child: Container(
                                          height: 45,
                                          width: 45,
                                          margin: EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff2B2B2B),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            // border: Border.all(
                                            //   width: 2.5,
                                            //   color: AppColors
                                            //       .white, // Apply the border color based on index
                                            // ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: SvgPicture.asset(
                                              title,
                                              height: 18,
                                              //color: Colors.white,
                                              color: index == 3
                                                  ? Colors.orange
                                                  : Colors.white,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                YMargin(25),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customText(
                                          text: "Alexia Bumbum",
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          textColor: AppColors.primaryPink,
                                        ),
                                        XMargin(3),
                                        SvgPicture.asset(
                                          "assets/images/verified.svg",
                                          height: 16,
                                          color: AppColors.primary,
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: SeenButton(
                                        width: 100,
                                        height: 35,
                                        hasBorder: true,
                                        color: Colors.transparent,
                                        borderColor: AppColors.primary,
                                        borderRadius: BorderRadius.circular(40),
                                        onTap: () {},
                                        buttonText: "Follow",
                                        textColor: AppColors.primary,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                      //                                       `
                    ],
                  ),
                ),
                YMargin(15),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: ExpandableText(
                        text:
                            "CarlyRaeSummers brings the best of British porn to SinParty. Her juicy 34DD boobs are waiting to drive you wild while her pussy-licking action makes the girls scream for more. When you subscribe to CarlyRae’s MyParty, her baby blue eyes will give you her cutest come-to-bed eyes. Tell her everything you want with a custom request and send her a tip to get all the attention you deserve.",
                        maxLines: 5,
                      ),
                    ),
                    YMargin(15),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:
                            profileSocialTitles.asMap().entries.map((entry) {
                          int index = entry.key;
                          String title = entry.value;

                          // Define the colors you want to use based on the index
                          Color borderColor;
                          if (index == 0) {
                            borderColor = Colors.green;
                          } else if (index == 1) {
                            borderColor = Colors.blue;
                          } else if (index == 2) {
                            borderColor = Colors.yellow;
                          } else {
                            borderColor =
                                Colors.green; // Default color for other indices
                          }

                          return Container(
                            height: 45,
                            width: 45,
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(50.0),
                              border: Border.all(
                                width: 2.5,
                                color: AppColors
                                    .white, // Apply the border color based on index
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SvgPicture.asset(
                                title,
                                height: 18,
                                color: Colors.white,
                                // color: index == 0
                                //     ? Colors.green
                                //     : index == 1
                                //         ? Colors.blue
                                //         : AppColors.primary,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    YMargin(25),
                    Container(
                      padding: EdgeInsets.only(left: 15),
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: const Color(0xff2B2B2B),
                                  border: Border.all(
                                    width: 1,
                                    color: model.currentPage == index
                                        ? AppColors.primaryPink
                                        : const Color(0xff2B2B2B),
                                  ),
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
                    Container(
                      //color: Colors.amber,
                      padding: EdgeInsets.only(right: 5, left: 5),
                      height: screenHeight,
                      width: kdDesktopMaxContentWidth / 0.1,
                      child: PageView(
                        pageSnapping: true,
                        controller: pageController2,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Expanded(
                            child: Container(
                              // height: kdDesktopMaxContentHeight,
                              // width: kdDesktopMaxContentWidth / 0.1,
                              //color: Colors.indigo,
                              child: GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 5,
                                        mainAxisSpacing: 5),
                                itemCount: 15,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    //color: Colors.amber,
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: kdDesktopMaxContentHeight,
                                          width: kdDesktopMaxContentWidth / 0.1,
                                          child: Image.asset(
                                            index.isOdd
                                                ? "assets/images/pic1.jpg"
                                                : "assets/images/pic2.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        if (index.isOdd)
                                          Container(
                                            height:
                                                kdDesktopMaxContentHeight / 0.1,
                                            width:
                                                kdDesktopMaxContentWidth / 0.1,
                                            color: Colors.pink.withOpacity(0.2),
                                            child: Center(
                                              child: Icon(
                                                Icons.lock_outline_rounded,
                                                color: Colors.white,
                                                size: 40,
                                              ),
                                            ),
                                          ),
                                        if (index.isEven)
                                          Container(
                                            height:
                                                kdDesktopMaxContentHeight / 0.1,
                                            width:
                                                kdDesktopMaxContentWidth / 0.1,
                                            color:
                                                Colors.white.withOpacity(0.1),
                                            child: Center(
                                                child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: SeenButton(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                buttonText: "Subscribe 🪙1500",
                                                fontSize: 10,
                                                height: 30,
                                                textColor: Colors.black,
                                              ),
                                            )),
                                          ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: kdDesktopMaxContentHeight / 0.1,
                            width: kdDesktopMaxContentWidth / 0.1,
                            //color: Colors.grey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  thickness: 1.4,
                                  color: AppColors.primaryPink.withOpacity(0.3),
                                ),
                                YMargin(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text: "Details",
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.primaryPink,
                                  ),
                                ),
                                YMargin(25),
                                RowEscortDetails(
                                  title: "Gender:",
                                  subTitle: "Female",
                                ),
                                RowEscortDetails(
                                  title: "Age:",
                                  subTitle: "23",
                                ),
                                RowEscortDetails(
                                  title: "Ethnicity:",
                                  subTitle: "African",
                                ),
                                RowEscortDetails(
                                  title: "Bust Size:",
                                  subTitle: "Curvy",
                                ),
                                RowEscortDetails(
                                  title: "Available To:",
                                  subTitle: "BI-sexual",
                                ),
                                RowEscortDetails(
                                  title: "Availability:",
                                  subTitle: "Incall / Outcall",
                                ),
                                YMargin(10),
                                Divider(
                                  thickness: 1.4,
                                  color: AppColors.primaryPink.withOpacity(0.3),
                                ),
                                YMargin(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text: "Price Listing",
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.primaryPink,
                                  ),
                                ),
                                RowEscortDetails(
                                  title: "Short Stay:",
                                  subTitle: "${AppString.naira}45,000",
                                ),
                                RowEscortDetails(
                                  title: "Overnight Stay:",
                                  subTitle: "${AppString.naira}80,000",
                                ),
                                RowEscortDetails(
                                  title: "Week-Long Engagement:",
                                  subTitle:
                                      "${AppString.naira}150,000 - ${AppString.naira}200,000",
                                ),
                                RowEscortDetails(
                                  title: "Chill Day Experience:",
                                  subTitle:
                                      "Send a message(Negotiable), Members only",
                                ),
                                RowEscortDetails(
                                  title: "Tailored Experience:",
                                  subTitle:
                                      "Send a message(Negotiable), VIP Members only",
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: kdDesktopMaxContentHeight / 0.1,
                            width: kdDesktopMaxContentWidth / 0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  thickness: 1.4,
                                  color: AppColors.primaryPink.withOpacity(0.3),
                                ),
                                YMargin(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text: "Services Offered",
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.primaryPink,
                                  ),
                                ),
                                YMargin(25),
                                Expanded(
                                  child: Container(
                                    child: ListView.builder(
                                      itemCount: services.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return RowEscortDetails(
                                          title: services[index],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: kdDesktopMaxContentHeight / 0.1,
                            width: kdDesktopMaxContentWidth / 0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  thickness: 1.4,
                                  color: AppColors.primaryPink.withOpacity(0.3),
                                ),
                                YMargin(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text: "Reviews",
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.primaryPink,
                                  ),
                                ),
                                YMargin(25),
                                Expanded(
                                  child: Container(
                                    child: ListView.builder(
                                      itemCount: reviewList.length,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        final list = reviewList[index];
                                        return Container(
                                          padding: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 20,
                                                backgroundColor: Colors.blue,
                                              ),
                                              XMargin(8),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  customText(
                                                    text: list['title'],
                                                    fontSize: 16,
                                                    textColor: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  customText(
                                                    text: list['date'],
                                                    fontSize: 12,
                                                    textColor:
                                                        Colors.grey.shade400,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: kdDesktopMaxContentHeight / 0.1,
                            width: kdDesktopMaxContentWidth / 0.1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Divider(
                                  thickness: 1.4,
                                  color: AppColors.primaryPink.withOpacity(0.3),
                                ),
                                YMargin(10),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text: "Reviews",
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    textColor: AppColors.primaryPink,
                                  ),
                                ),
                                YMargin(15),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: customText(
                                    text:
                                        "Stickers below indicate my features, kink, sexuality, services and personality",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    textColor: Colors.grey.shade400,
                                  ),
                                ),
                                YMargin(25),
                                Container(
                                  width: kdDesktopMaxContentWidth / 0,
                                  height: MediaQuery.of(context).size.height,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 4,
                                      mainAxisExtent: screenHeight * 0.12,
                                    ),
                                    itemCount: stickerListImages.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Container(
                                        height: 60,
                                        width: 60,
                                        child: Image.asset(
                                            stickerListImages[index]),
                                      );
                                    },
                                  ),
                                ),
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
          ),
        );
      },
    );
  }
}

class RowEscortDetails extends StatelessWidget {
  final String? title;

  final String? subTitle;
  const RowEscortDetails({
    super.key,
    required this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Expanded(
            flex: subTitle == null ? 1 : 2,
            child: Container(
              child: customText(
                text: title!,
                fontSize: 14,
                textColor: Colors.grey.shade500,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          XMargin(screenWidth / 5),
          if (subTitle != null)
            Expanded(
              flex: 4,
              child: Container(
                //color: Colors.amber,
                child: customText(
                  text: subTitle ?? "",
                  fontSize: 14,
                  line: 3,
                  textColor: AppColors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
