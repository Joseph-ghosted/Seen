import 'dart:developer';

import 'package:Seen/ui/common/app_constants.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:Seen/widgets/textform_field.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'escort_dashboard_viewmodel.dart';

class AccountViewProfile extends StatelessWidget {
  final TextEditingController emailController;

  const AccountViewProfile({
    super.key,
    required this.emailController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kdDesktopMaxContentWidth / 0,
      height: kdDesktopMaxContentHeight / 0,
      child: Padding(
        padding: const EdgeInsets.only(right: kdDesktopMaxContentWidth * 0.25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
              text: "Tell us more about you",
              fontSize: 34,
              fontWeight: FontWeight.w600,
              textColor: AppColors.white,
            ),
            YMargin(15),
            customText(
              text: "Some of this details can't be change",
              fontSize: 14,
              fontWeight: FontWeight.w300,
              textColor: AppColors.primaryBgDarkwhite,
            ),
            YMargin(35),
            AppTextFormField(
              //validator: emptyStringValidation,
              textEditingController: emailController,
              label: "Full Name",
              hintText: "Anne Esteem",
              readonly: true,
            ),
            YMargin(35),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "DOB",
                    hintText: "@anonymous123@gmail.com",
                  ),
                ),
                XMargin(20),
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "Gender",
                    readonly: true,
                    hintText: "Male",
                  ),
                ),
              ],
            ),
            YMargin(35),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "Country of Residence",
                    hintText: "Nigeria",
                  ),
                ),
                XMargin(20),
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "X handle",
                    hintText: "mimiAssOfficial",
                  ),
                ),
              ],
            ),
            YMargin(35),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "Instagram Handle",
                    hintText: "MimiAssOfficial",
                  ),
                ),
                XMargin(20),
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "Snapchat handle",
                    hintText: "mimiBigAss",
                  ),
                ),
              ],
            ),
            YMargin(50),
            SeenButton(
              onTap: () {},
              textColor: AppColors.buttonTextColor,
              buttonText: "Save Changes",
            ),
            YMargin(15),
          ],
        ),
      ),
    );
  }
}

class EscortDashboardViewDesktop
    extends ViewModelWidget<EscortDashboardViewModel> {
  const EscortDashboardViewDesktop({super.key});

  @override
  Widget build(BuildContext context, EscortDashboardViewModel viewModel) {
    //textfields
    final emailController = TextEditingController();
    //for sidebar
    PageController pageController = PageController();
    double _currentPageValue = 0;
    pageController.addListener(() {
      _currentPageValue = pageController.page!;
    });

    //for within profile
    PageController pageController2 = PageController();
    double _currentPageValue2 = 0;
    pageController2.addListener(() {
      _currentPageValue2 = pageController2.page!;
    });

    List<String> buttonTitles = [
      "Overview",
      "Account",
      "Earning",
      "Social Account",
    ];

    final List<String> profileSocialTitles = [
      "assets/images/Vector.svg",
      "assets/images/Social Icons-1.svg",
      "assets/images/Social Icons.svg",
    ];

    final List<Map<String, dynamic>> profileTitles = [
      {
        "iconString": "assets/images/icons8-fire-30.png",
        "title": "Followers",
      },
      {
        "iconString": "assets/images/icons8-edit-32.png",
        "title": "Custom Request",
      },
      {
        "iconString": "assets/images/icons8-message-24.png",
        "title": "Message Escort",
      }
    ];

    final List<String> stickerList = [
      "Big Ass",
      "Bend Down Select",
      "Blow Jobs",
      "Hardcore",
      "Hawk Peww"
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

    return ViewModelBuilder<EscortDashboardViewModel>.reactive(
        viewModelBuilder: () => EscortDashboardViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: MainBodyBgWeb(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        YMargin(25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundColor: AppColors.primary400,
                              ),
                              XMargin(10),
                              customText(
                                text: "${AppString.naira}0",
                                fontSize: 25,
                                textColor: AppColors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 15),
                          child: SeenButton(
                            onTap: () {
                              log("Last screen Reached hope you check all field before creating acount");
                            },
                            height: 40,
                            width: 140,
                            color: Colors.white12,
                            textColor: AppColors.primaryPink,
                            buttonText: "Withdraw",
                            fontSize: 12,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/person.svg",
                          title: "My Profile",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/monitor.svg",
                          title: "My Feed",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/inbox.svg",
                          title: "My Inbox",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/bell.svg",
                          title: "Notification",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/money.svg",
                          title: "Earnings",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/transaction.svg",
                          title: "Transactions",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/inbox.svg",
                          title: "Comments",
                        ),
                        RowIconTitle(
                          IconString: "assets/icons/logout.svg",
                          title: "Logout",
                        ),
                      ],
                    ),
                  ),
                  XMargin(50),
                  Expanded(
                    child: Container(
                      //color: Colors.amber,
                      child: PageView(
                        pageSnapping: true,
                        controller: pageController,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            padding: EdgeInsets.all(30),
                            color: Color(0xff141414),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SeenButton(
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(50),
                                    width: screenWidth / 10,
                                    textColor: AppColors.buttonTextColor,
                                    buttonText: "Create Post",
                                  ),
                                ),
                                YMargin(15),
                                Row(
                                    children: buttonTitles
                                        .asMap()
                                        .entries
                                        .map((entry) {
                                  int index = entry.key;
                                  String title = entry.value;
                                  return GestureDetector(
                                    onTap: () {
                                      model.setCurrentPage(index.toDouble());
                                      pageController2.animateToPage(
                                        index,
                                        duration:
                                            const Duration(milliseconds: 250),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: model.currentPage == index
                                            ? AppColors.primaryPink
                                            : Color(0xff2B2B2B),
                                        border: Border.all(
                                            width: 1,
                                            color: AppColors.primaryPink
                                                .withOpacity(0.5)),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                      ),
                                      child: Center(
                                        child: customText(
                                          text: title,
                                          fontSize: 11,
                                          textColor: model.currentPage == index
                                              ? AppColors.white
                                              : Color(0xff999999),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList()),
                                YMargin(30),
                                Expanded(
                                  child: PageView(
                                    controller: pageController2,
                                    pageSnapping: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    onPageChanged: (int index) {
                                      model.setCurrentPage(index.toDouble());
                                    },
                                    children: [
                                      ProfileOverViewPage(
                                        profileSocialTitles:
                                            profileSocialTitles,
                                        profileTitles: profileTitles,
                                        emailController: emailController,
                                        stickerList: stickerList,
                                        stickerListImages: stickerListImages,
                                      ),
                                      AccountViewProfile(
                                        emailController: emailController,
                                      ),
                                      Container(
                                        width: kdDesktopMaxContentWidth / 0,
                                        height: kdDesktopMaxContentHeight / 0,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              customText(
                                                text: "Earnings",
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                textColor: AppColors.white,
                                              ),
                                              YMargin(5),
                                              customText(
                                                text:
                                                    "This will display your transactions across the platform",
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                                textColor: AppColors
                                                    .primaryBgDarkwhite,
                                              ),
                                              YMargin(20),
                                              Container(
                                                height: 150,
                                                //color: Colors.amber,
                                                width:
                                                    kdDesktopMaxContentWidth /
                                                        0,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Available Amount",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}100,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              customText(
                                                                text:
                                                                    "Custom Video/Request: 0",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                textColor: AppColors
                                                                    .primaryBgDarkwhite,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    XMargin(25),
                                                    Expanded(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Total Transaction",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}500,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              customText(
                                                                text:
                                                                    "All tranaction within the app",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                textColor: AppColors
                                                                    .primaryBgDarkwhite,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    XMargin(25),
                                                    Expanded(
                                                      child: Container(
                                                        width: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Total Withdrawals",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}400,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child:
                                                                    Container(
                                                                  width: 200,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: AppColors
                                                                        .primaryPink,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                  ),
                                                                  child: Center(
                                                                    child: customText(
                                                                        text:
                                                                            "See History",
                                                                        fontSize:
                                                                            11,
                                                                        textColor:
                                                                            AppColors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              YMargin(20),
                                              Container(
                                                height: 150,
                                                //color: Colors.amber,
                                                width:
                                                    kdDesktopMaxContentWidth /
                                                        0,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Available Amount",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}100,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              customText(
                                                                text:
                                                                    "Custom Video/Request: 0",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                textColor: AppColors
                                                                    .primaryBgDarkwhite,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    XMargin(25),
                                                    Expanded(
                                                      child: Container(
                                                        width: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Total Transaction",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}500,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              customText(
                                                                text:
                                                                    "All tranaction within the app",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                textColor: AppColors
                                                                    .primaryBgDarkwhite,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    XMargin(25),
                                                    Expanded(
                                                      child: Container(
                                                        width: 300,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color:
                                                              Color(0xff3E186D),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(20.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              customText(
                                                                text:
                                                                    "Total Withdrawals",
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              YMargin(10),
                                                              customText(
                                                                text:
                                                                    "${AppString.naira}400,000",
                                                                fontSize: 25,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                textColor:
                                                                    AppColors
                                                                        .white,
                                                              ),
                                                              Spacer(),
                                                              GestureDetector(
                                                                onTap: () {},
                                                                child:
                                                                    Container(
                                                                  width: 200,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              10),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: AppColors
                                                                        .primaryPink,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            50.0),
                                                                  ),
                                                                  child: Center(
                                                                    child: customText(
                                                                        text:
                                                                            "See History",
                                                                        fontSize:
                                                                            11,
                                                                        textColor:
                                                                            AppColors.white),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: kdDesktopMaxContentWidth / 0,
                                        height: kdDesktopMaxContentHeight / 0,
                                        color: Colors.pink,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.green,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.white,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.indigo,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.purple,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.pink,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.brown,
                          ),
                          Container(
                            width: kdDesktopMaxContentWidth / 0,
                            height: kdDesktopMaxContentHeight / 0,
                            color: Colors.orange,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class ProfileOverViewPage extends StatelessWidget {
  final List<String> profileSocialTitles;

  final List<Map<String, dynamic>> profileTitles;
  final TextEditingController emailController;
  final List<String> stickerList;
  final List<String> stickerListImages;
  const ProfileOverViewPage({
    super.key,
    required this.profileSocialTitles,
    required this.profileTitles,
    required this.emailController,
    required this.stickerList,
    required this.stickerListImages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customText(
                text: "Profile Banner preview",
                fontSize: 12,
                textColor: Colors.white),
            YMargin(10),
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customText(
                                      text: "XOXO",
                                      fontSize: 35,
                                      fontWeight: FontWeight.w800,
                                      textColor: AppColors.primaryPink,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10.0, left: 5),
                                      child: SvgPicture.asset(
                                        "assets/images/verified.svg",
                                        height: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                XMargin(35),
                                SeenButton(
                                  onTap: () {},
                                  height: 33,
                                  width: 80,
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50),
                                  textColor: AppColors.white,
                                  buttonText: "Follow",
                                ),
                              ],
                            ),
                            YMargin(25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: profileSocialTitles
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                int index = entry.key;
                                String title = entry.value;

                                // Define the colors you want to use based on the index
                                Color borderColor;
                                if (index == 0) {
                                  borderColor = Colors.blue;
                                } else if (index == 1) {
                                  borderColor = Colors.yellow;
                                } else if (index == 2) {
                                  borderColor = Colors.green;
                                } else {
                                  borderColor = Colors
                                      .green; // Default color for other indices
                                }

                                return Container(
                                  margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(50.0),
                                    border: Border.all(
                                      width: 2,
                                      color:
                                          borderColor, // Apply the border color based on index
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SvgPicture.asset(
                                      title,
                                      height: 18,
                                      color: AppColors.black.withOpacity(0.6),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                            YMargin(15),
                            Row(
                                children: profileTitles.map((title) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        title['iconString'],
                                        height: 15,
                                        color: Colors.white,
                                      ),
                                      XMargin(4),
                                      customText(
                                          text: title['title'],
                                          fontSize: 12,
                                          textColor: Colors.white),
                                    ],
                                  ),
                                ),
                              );
                            }).toList())
                          ],
                        ),
                      ),
                    ),
                  ),
                  XMargin(20),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(0),
                      margin: EdgeInsets.all(0),
                      color: AppColors.primary.withOpacity(0.4),
                      child: Container(
                        height: 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                            customText(
                              text: "Add Profile Image",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              textColor: AppColors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            YMargin(20),
            Row(
              children: [
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "Display Name",
                    hintText: "PrettyYungTing",
                  ),
                ),
                XMargin(20),
                Expanded(
                  child: AppTextFormField(
                    //validator: emptyStringValidation,
                    textEditingController: emailController,
                    label: "What'sApp Number",
                    hintText: "08166129380",
                  ),
                ),
              ],
            ),
            YMargin(30),
            Container(
              height: 280,
              width: screenWidth,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customText(
                              text: "Describe Content",
                              fontSize: 14,
                              textColor: AppColors.white),
                          YMargin(5),
                          customText(
                              text:
                                  "Select or add up to 5 tags that describes you and your content. This will allow your fans to easily find your content on the site",
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              textColor: AppColors.primaryBgDarkwhite),
                          YMargin(20),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff2B2B2B),
                              // borderRadius:
                              //     BorderRadius.circular(10),
                            ),
                            child: DropdownButtonFormField<String>(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff2B2B2B),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                border: InputBorder.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              style: GoogleFonts.quicksand(
                                color: Colors.white,
                              ),
                              isExpanded: true,
                              hint: Text(
                                '  Select a personal slug',
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              items: stickerList.map((region) {
                                return DropdownMenuItem<String>(
                                  value: region,
                                  child: customText(
                                    text: region,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    textColor: AppColors.black,
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                debugPrint("newValue======== $newValue");
                              },
                            ),
                          ),
                          YMargin(10),
                          Container(
                            alignment: Alignment.center,
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color(0xff2B2B2B),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  XMargin(30),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customText(
                                  text: "Select Sticker",
                                  fontSize: 14,
                                  textColor: AppColors.white),
                              YMargin(5),
                              customText(
                                  text:
                                      "Select or add up to 5 Stickers that Best suits your personality as an Escort",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  textColor: AppColors.primaryBgDarkwhite),
                              YMargin(20),
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff2B2B2B),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: kdDesktopMaxContentWidth / 0,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: GridView.builder(
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
                                  Container(
                                    width: kdDesktopMaxContentWidth / 0,
                                    height: MediaQuery.of(context).size.height,
                                    decoration: BoxDecoration(
                                      color: AppColors.black.withOpacity(0.7),
                                      borderRadius: BorderRadius.circular(
                                        20,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.lock,
                                          size: 50,
                                          color: Colors.white,
                                        ),
                                        YMargin(5),
                                        customText(
                                          text: "Unlock Stickers Tag",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                          textColor: Colors.white,
                                        ),
                                        YMargin(10),
                                        SeenButton(
                                          onTap: () {},
                                          height: 40,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          width: screenWidth / 8,
                                          textColor: AppColors.buttonTextColor,
                                          buttonText: "Bundle 15 coins",
                                        ),
                                      ],
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
                ],
              ),
            ),
            YMargin(30),
            Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff2B2B2B),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customText(
                            text: "Delete Account",
                            fontSize: 12,
                            textColor: AppColors.white,
                          ),
                          YMargin(15),
                          customText(
                            text:
                                "Ready to retire, shut off the camera and pack away all the sex toys? :)",
                            fontSize: 12,
                            textColor: AppColors.primaryBgDarkwhite,
                          ),
                          YMargin(15),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 200,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                color: Color(0xff2B2B2B),
                                border: Border.all(
                                    width: 1,
                                    color: AppColors.primary.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Center(
                                child: customText(
                                    text: "Change Password",
                                    fontSize: 11,
                                    textColor: AppColors.primary),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                XMargin(15),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff2B2B2B),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customText(
                          text: "Change password",
                          fontSize: 12,
                          textColor: AppColors.white,
                        ),
                        YMargin(15),
                        customText(
                          text:
                              "Change your current password for accessing your Creator account.",
                          fontSize: 12,
                          textAlignment: TextAlign.center,
                          textColor: AppColors.primaryBgDarkwhite,
                        ),
                        YMargin(15),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: customText(
                                  text: "Change Password",
                                  fontSize: 11,
                                  textColor: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            YMargin(30),
            Center(
              child: SeenButton(
                onTap: () {},
                height: 40,
                borderRadius: BorderRadius.circular(50),
                width: screenWidth / 10,
                textColor: AppColors.buttonTextColor,
                buttonText: "Save Changes",
              ),
            ),
            YMargin(50),
          ],
        ),
      ),
    );
  }
}

class RowIconTitle extends StatelessWidget {
  final String IconString;

  final String title;
  const RowIconTitle({
    super.key,
    required this.IconString,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColors.primary400,
                width: 1.5,
              ),
            ),
            child: SvgPicture.asset(
              IconString,
              color: AppColors.white,
              height: 20,
            ),
          ),
          XMargin(5),
          customText(
            text: title,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            textColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
