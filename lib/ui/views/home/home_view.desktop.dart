import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:Seen/ui/common/app_constants.dart';
import 'package:Seen/ui/common/ui_helpers.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:Seen/widgets/textform_field.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:Seen/widgets/web/transparent_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
      body: MainBodyBgWeb(
        child: BoxRegisterBG(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/logo_seen.svg"),
                        customText(
                            text: "  Seen",
                            fontSize: 18,
                            textColor: AppColors.white),
                      ],
                    ),
                    YMargin(20),
                    customText(
                        text: "Start your 30-day free\ntrial",
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        textColor: AppColors.white),
                    YMargin(20),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/check-circle.svg"),
                        customText(
                            text: "  No credit card required",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            textColor: AppColors.primary400),
                      ],
                    ),
                    YMargin(20),
                    WhatWeOfferWidget(
                      imageString: "assets/images/2persons.svg",
                      title: "Invite unlimited colleagues",
                      subTitle:
                          "Integrate with guaranteed developer-friendly APIs or openly to choose a\nbuild-ready\nor low-code solution.",
                    ),
                    WhatWeOfferWidget(
                      imageString: "assets/images/check-verified-02.svg",
                      title: "Ensure compliance",
                      subTitle:
                          "Receive detailed insights on all your numbers in real-time, \nsee where visitors are coming from.",
                    ),
                    WhatWeOfferWidget(
                      imageString: "assets/images/shield.svg",
                      title: "Built-in security",
                      subTitle:
                          "Keep your team members and customers in the loop\nby sharing your dashboard public.",
                    ),
                    Spacer(),
                    RichText(
                      softWrap: true,
                      text: TextSpan(
                        text: 'Terms  ·  ',
                        style: GoogleFonts.poppins(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primary400,
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
                            text: ' Privacy  ·  ',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary400,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: ' Docs  ·  ',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary400,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                          TextSpan(
                            text: ' Helps',
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: AppColors.primary400,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Signupwidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class Signupwidget extends StatefulWidget {
  const Signupwidget({
    super.key,
  });

  @override
  State<Signupwidget> createState() => _SignupwidgetState();
}

class WhatWeOfferWidget extends StatelessWidget {
  final String title;

  final String subTitle;
  final String imageString;
  const WhatWeOfferWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imageString,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            imageString,
            height: 25,
          ),
          YMargin(8),
          customText(
            text: title,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            textColor: AppColors.white,
          ),
          YMargin(5),
          customText(
            text: subTitle,
            fontSize: 12,
            line: 2,
            fontWeight: FontWeight.w400,
            textColor: AppColors.primary400,
          ),
        ],
      ),
    );
  }
}

class _SignupwidgetState extends State<Signupwidget> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _routerService = locator<RouterService>();
    return Row(
      children: [
        Container(
          width: screenWidth(context) / 2.5,
          height: screenHeight(context),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              width: 1,
              color: Colors.white54,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(
                  "assets/images/Dot.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kdDesktopMaxContentHeight * 0.05,
                  //horizontal: kdDesktopMaxContentWidth * 0.05,
                ),
                child: Column(
                  children: [
                    // SvgPicture.asset(
                    //   "assets/images/logoMain.svg",
                    //   height: 50,
                    // ),
                    // YMargin(30),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kdDesktopMaxContentWidth * 0.02),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: SeenButton(
                                  onTap: () {
                                    _routerService.replaceWith(
                                        const EscortOnboardingViewRoute());
                                  },
                                  borderColor: AppColors.white,
                                  color: Colors.transparent,
                                  hasBorder: true,
                                  textColor: AppColors.white,
                                  buttonText: "Escort Registration",
                                ),
                              )
                            ],
                          ),
                          YMargin(15),
                          Divider(
                              thickness: 1.2,
                              color: AppColors.primary.withOpacity(0.2)),
                          YMargin(15),
                          Row(
                            children: [
                              Expanded(
                                child: AppTextFormField(
                                  //validator: emptyStringValidation,
                                  textEditingController: emailController,
                                  label: "Email Address",
                                  hintText: "@anonymous123@lucept.com",
                                ),
                              ),
                              XMargin(30),
                              Expanded(
                                child: AppTextFormField(
                                  //validator: emptyStringValidation,
                                  textEditingController: emailController,
                                  label: "Email Address",
                                  hintText: "@anonymous123@lucept.com",
                                ),
                              ),
                            ],
                          ),
                          YMargin(15),
                          AppTextFormField(
                            //validator: emptyStringValidation,
                            textEditingController: emailController,
                            label: "Email Address",
                            hintText: "@anonymous123@lucept.com",
                          ),
                          YMargin(15),
                          AppTextFormField(
                            //validator: emptyStringValidation,
                            textEditingController: emailController,
                            label: "Email Address",
                            hintText: "@anonymous123@lucept.com",
                          ),
                          YMargin(15),
                          AppTextFormField(
                            //validator: emptyStringValidation,
                            textEditingController: emailController,
                            isPassword: true,
                            label: "Password",
                            hintText: "Password",
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 15,
                              ),
                            ),
                          ),
                          YMargin(10),
                          customText(
                            text: "Minimum length is 8 characters.",
                            fontSize: 12,
                            textColor: AppColors.primary400,
                          ),
                          YMargin(30),
                          SeenButton(
                            onTap: () {},
                            textColor: AppColors.buttonTextColor,
                            buttonText: "Sign Up",
                          ),
                          YMargin(15),
                          RichText(
                            softWrap: true,
                            text: TextSpan(
                              text: 'By creating an account, you agree to the ',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primary400,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms of Service. ',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white,
                                    decoration: TextDecoration.underline,
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
                                ),
                                TextSpan(
                                  text:
                                      " We'll occasionally send you account-related emails.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.primary400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          YMargin(30),
                          Center(
                            child: RichText(
                              softWrap: true,
                              text: TextSpan(
                                text: 'Already have an account?  ',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.white,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Login ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        _routerService.replaceWith(
                                            const LoginViewRoute());
                                        //viewModel.runStartupLogic()
                                        // final _navigationService =
                                        //     locator<NavigationService>();
                                        // _navigationService.;
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
