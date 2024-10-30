import 'dart:developer';

import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:Seen/widgets/textform_field.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:Seen/widgets/web/transparent_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'escort_onboarding_viewmodel.dart';

class EscortOnboardingViewDesktop
    extends ViewModelWidget<EscortOnboardingViewModel> {
  const EscortOnboardingViewDesktop({super.key});

  @override
  Widget build(BuildContext context, EscortOnboardingViewModel viewModel) {
    final emailController = TextEditingController();
    PageController pageController = PageController();
    double _currentPageValue = 0;
    pageController.addListener(() {
      _currentPageValue = pageController.page!;
    });

    final List<String> buttonTitles = ["Straight", "Non Straight", "Others"];
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
    final List<String> profileSocialTitles = [
      "assets/images/Vector.svg",
      "assets/images/Social Icons-1.svg",
      "assets/images/Social Icons.svg",
    ];
    final List<String> stickerList = ["Straight", "Non Straight", "Others"];

    final _routerService = locator<RouterService>();

    return ViewModelBuilder<EscortOnboardingViewModel>.reactive(
        viewModelBuilder: () => EscortOnboardingViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: MainBodyBgWeb(
              child: BoxRegisterBG(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: Colors.white54,
                        ),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset("assets/images/seenLogo.svg"),
                          YMargin(15),
                        ],
                      ),
                    ),
                    XMargin(screenWidth / 8),
                    Expanded(
                      child: Container(
                        height: screenHeight,
                        width: screenWidth,
                        //color: mainColor,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              //color: Colors.amber,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 5,
                                    width: screenWidth / 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      //color: AppColors.primary,
                                      color: model.click1 == true
                                          ? AppColors.primary
                                          : AppColors.primary400,
                                    ),
                                  ),
                                  XMargin(7),
                                  Container(
                                    height: 5,
                                    width: screenWidth / 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      //color: AppColors.primary400,
                                      color: model.click2 == true
                                          ? AppColors.primary
                                          : AppColors.primary400,
                                    ),
                                  ),
                                  XMargin(7),
                                  Container(
                                    height: 5,
                                    width: screenWidth / 10,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      // color: AppColors.primary400,
                                      color: model.click3 == true
                                          ? AppColors.primary
                                          : AppColors.primary400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: PageView(
                                  pageSnapping: true,
                                  controller: pageController,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                      width: screenWidth / 2,
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        children: [
                                          customText(
                                            text: "Tell us more about you",
                                            fontSize: 34,
                                            fontWeight: FontWeight.w600,
                                            textColor: AppColors.white,
                                          ),
                                          YMargin(35),
                                          AppTextFormField(
                                            //validator: emptyStringValidation,
                                            textEditingController:
                                                emailController,
                                            label: "Full Name",
                                            hintText: "Anne Esteem",
                                          ),
                                          YMargin(35),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: AppTextFormField(
                                                  //validator: emptyStringValidation,
                                                  textEditingController:
                                                      emailController,
                                                  label: "DOB",
                                                  hintText:
                                                      "@anonymous123@lucept.com",
                                                ),
                                              ),
                                              XMargin(20),
                                              Expanded(
                                                child: AppTextFormField(
                                                  //validator: emptyStringValidation,
                                                  textEditingController:
                                                      emailController,
                                                  label: "Gender",
                                                  hintText:
                                                      "@anonymous123@lucept.com",
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
                                                  textEditingController:
                                                      emailController,
                                                  label: "Country of Residence",
                                                  hintText: "Nigeria",
                                                ),
                                              ),
                                              XMargin(20),
                                              Expanded(
                                                child: AppTextFormField(
                                                  //validator: emptyStringValidation,
                                                  textEditingController:
                                                      emailController,
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
                                                  textEditingController:
                                                      emailController,
                                                  label: "Instagram Handle",
                                                  hintText: "MimiAssOfficial",
                                                ),
                                              ),
                                              XMargin(20),
                                              Expanded(
                                                child: AppTextFormField(
                                                  //validator: emptyStringValidation,
                                                  textEditingController:
                                                      emailController,
                                                  label: "Snapchat handle",
                                                  hintText: "mimiBigAss",
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          SeenButton(
                                            onTap: () {
                                              if (_currentPageValue == 0) {
                                                pageController.animateToPage(1,
                                                    duration: const Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.easeInOut);

                                                model.setClick(true);
                                              }
                                            },
                                            textColor:
                                                AppColors.buttonTextColor,
                                            buttonText: "Continue to Profile",
                                          ),
                                          YMargin(15),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth / 2,
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          customText(
                                            text: "Tell the globe about you",
                                            fontSize: 34,
                                            fontWeight: FontWeight.w600,
                                            textColor: AppColors.white,
                                          ),
                                          YMargin(30),
                                          AppTextFormField(
                                            //validator: emptyStringValidation,
                                            textEditingController:
                                                emailController,
                                            label: "Display Name",
                                            hintText: "Anne Thick ass",
                                          ),
                                          YMargin(3),
                                          customText(
                                            text:
                                                "Branding is important! You won’t be able to edit this name, choose wisely",
                                            fontSize: 11,
                                            fontWeight: FontWeight.w300,
                                            textColor: AppColors.primary400,
                                          ),
                                          YMargin(30),
                                          AppTextFormField(
                                            //validator: emptyStringValidation,
                                            textEditingController:
                                                emailController,
                                            label: "Wirte your bio",
                                            maxLength: 4,
                                            maxLines: 5,
                                            hintText:
                                                "I like it, how you like it daddy - Smiles :)",
                                          ),
                                          YMargin(10),
                                          customText(
                                              text: 'who is your Audience',
                                              fontSize: 14,
                                              textColor: Colors.white),
                                          const YMargin(5),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children:
                                                  buttonTitles.map((title) {
                                                final isSelected =
                                                    model.isSelected(title);
                                                return GestureDetector(
                                                  onTap: () {
                                                    model.toggleButton(title);
                                                  },
                                                  child: Container(
                                                    width: screenWidth / 7,
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                      color: isSelected
                                                          ? AppColors.primary
                                                              .withOpacity(0.5)
                                                          : Colors.white
                                                              .withOpacity(0.1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                    child: Center(
                                                      child: customText(
                                                          text: title,
                                                          fontSize: 14,
                                                          textColor:
                                                              Colors.white),
                                                    ),
                                                  ),
                                                );
                                              }).toList()),
                                          YMargin(25),
                                          Container(
                                            alignment: Alignment.center,
                                            width: double.infinity,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child:
                                                DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                filled: false,
                                                fillColor: Colors.white,
                                              ),
                                              isExpanded: true,
                                              hint: Text(
                                                  'Select a personal slug'),
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
                                                debugPrint(
                                                    "newValue======== $newValue");
                                              },
                                            ),
                                          ),
                                          Spacer(),
                                          SeenButton(
                                            onTap: () {
                                              if (_currentPageValue == 1) {
                                                pageController.animateToPage(2,
                                                    duration: const Duration(
                                                        milliseconds: 250),
                                                    curve: Curves.easeInOut);
                                              }

                                              model.setClick2(true);
                                            },
                                            textColor:
                                                AppColors.buttonTextColor,
                                            buttonText: "Save Information",
                                          ),
                                          YMargin(15),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth / 2,
                                      padding: EdgeInsets.all(15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          customText(
                                            text: "Show the world who you are",
                                            fontSize: 34,
                                            fontWeight: FontWeight.w600,
                                            textColor: AppColors.white,
                                          ),
                                          YMargin(15),
                                          // customText(
                                          //   text:
                                          //       "Branding is important! Kindly Add Erotic Images here of yourself to get more visitors to your profile",
                                          //   fontSize: 13,
                                          //   fontWeight: FontWeight.w400,
                                          //   textColor: AppColors.primary400,
                                          // ),
                                          RichText(
                                            softWrap: true,
                                            text: TextSpan(
                                              text:
                                                  'Branding is important! Kindly Add Erotic Images here of yourself to get more visitors to your profile. ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.primary400,
                                                height: 1.7,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // Navigator.of(context).push(
                                                  //   MaterialPageRoute(
                                                  //     builder: (context) =>
                                                  //         const TermsAndConditionScreenView(),
                                                  //   ),
                                                  // );
                                                },
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text:
                                                      "Privacy is Important and you're covered by Escort terms and condition",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.primary400,
                                                    height: 1.7,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {},
                                                ),
                                                TextSpan(
                                                  text: " Terms and Condition",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        AppColors.primaryPink,
                                                  ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () {},
                                                ),
                                              ],
                                            ),
                                          ),
                                          YMargin(30),
                                          customText(
                                            text: "Profile Banner Preview",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            textColor: AppColors.white,
                                          ),
                                          YMargin(10),
                                          Container(
                                            padding: EdgeInsets.all(0),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      15.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              customText(
                                                                text: "XOXO",
                                                                fontSize: 35,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                textColor: AppColors
                                                                    .primaryPink,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            10.0,
                                                                        left:
                                                                            5),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
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
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                            textColor:
                                                                AppColors.white,
                                                            buttonText:
                                                                "Follow",
                                                          ),
                                                        ],
                                                      ),
                                                      YMargin(25),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children:
                                                            profileSocialTitles
                                                                .asMap()
                                                                .entries
                                                                .map((entry) {
                                                          int index = entry.key;
                                                          String title =
                                                              entry.value;

                                                          // Define the colors you want to use based on the index
                                                          Color borderColor;
                                                          if (index == 0) {
                                                            borderColor =
                                                                Colors.blue;
                                                          } else if (index ==
                                                              1) {
                                                            borderColor =
                                                                Colors.yellow;
                                                          } else if (index ==
                                                              2) {
                                                            borderColor =
                                                                Colors.green;
                                                          } else {
                                                            borderColor = Colors
                                                                .green; // Default color for other indices
                                                          }

                                                          return Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 10),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                              border:
                                                                  Border.all(
                                                                width: 2,
                                                                color:
                                                                    borderColor, // Apply the border color based on index
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                      10.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                title,
                                                                height: 18,
                                                                color: AppColors
                                                                    .black
                                                                    .withOpacity(
                                                                        0.6),
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                                      ),
                                                      YMargin(15),
                                                      Row(
                                                          children:
                                                              profileTitles
                                                                  .map((title) {
                                                        return GestureDetector(
                                                          onTap: () {},
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8),
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Image.asset(
                                                                  title[
                                                                      'iconString'],
                                                                  height: 15,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                XMargin(4),
                                                                customText(
                                                                    text: title[
                                                                        'title'],
                                                                    fontSize:
                                                                        12,
                                                                    textColor:
                                                                        Colors
                                                                            .white),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }).toList())
                                                    ],
                                                  ),
                                                ),
                                                XMargin(20),
                                                Expanded(
                                                  child: Container(
                                                    padding: EdgeInsets.all(0),
                                                    margin: EdgeInsets.all(0),
                                                    color: AppColors.primary
                                                        .withOpacity(0.4),
                                                    child: Container(
                                                      height: 180,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons.add,
                                                            color: Colors.black,
                                                          ),
                                                          customText(
                                                            text:
                                                                "Add Profile Image",
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            textColor:
                                                                AppColors.black,
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
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 180,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                      YMargin(6),
                                                      customText(
                                                        text: "Add Image",
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        textColor:
                                                            AppColors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              XMargin(15),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 180,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                      YMargin(6),
                                                      customText(
                                                        text: "Add Image",
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        textColor:
                                                            AppColors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              XMargin(15),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 180,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                      YMargin(6),
                                                      customText(
                                                        text: "Add Image",
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        textColor:
                                                            AppColors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              XMargin(15),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white12,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  height: 180,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white,
                                                      ),
                                                      YMargin(6),
                                                      customText(
                                                        text: "Add Image",
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        textColor:
                                                            AppColors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          SeenButton(
                                            onTap: () {
                                              log("Last screen Reached hope you check all field before creating acount");
                                              model.setClick3(true);
                                              _routerService
                                                  .replaceWithEscortDashboardView();
                                            },
                                            textColor:
                                                AppColors.buttonTextColor,
                                            buttonText: "Continue to Profile",
                                          ),
                                          YMargin(15),
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
            ),
          );
        });
  }
}
