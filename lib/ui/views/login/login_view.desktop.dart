import 'package:Seen/app/app.router.dart';
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
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import 'login_viewmodel.dart';

class LoginViewDesktop extends ViewModelWidget<LoginViewModel> {
  const LoginViewDesktop({super.key});

  @override
  Widget build(BuildContext context, LoginViewModel viewModel) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final _routerService = locator<RouterService>();
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) {
        return Scaffold(
          body: MainBodyBgWeb(
            child: BoxRegisterBG(
              child: Column(
                children: [
                  SvgPicture.asset("assets/images/logo_seen.svg"),
                  YMargin(15),
                  customText(
                    text: "Login to Seen",
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    textColor: AppColors.white,
                  ),
                  YMargin(20),
                  Container(
                    width: screenWidth(context) / 2.5,
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
                          child: Container(
                            height: 100,
                            width: double.infinity,
                            child: Image.asset(
                              "assets/images/Dot.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              AppTextFormField(
                                //validator: emptyStringValidation,
                                textEditingController: emailController,
                                label: "Email Address",
                                hintText: "@anonymous123@lucept.com",
                              ),
                              YMargin(10),
                              Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: customText(
                                    text: "Forgot Password?",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    textColor: AppColors.primary,
                                    textdecoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              YMargin(10),
                              AppTextFormField(
                                //validator: emptyStringValidation,
                                textEditingController: passwordController,
                                label: "Password",
                                hintText: "* * * * * * * * *",
                              ),
                              YMargin(10),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: AppColors
                                        .primary, // Replace with your desired color
                                    checkColor: AppColors.black,
                                    value: model.click,
                                    onChanged: (value) {
                                      model.setClick(value!);
                                    },
                                  ),
                                  customText(
                                    text: "Remember Me",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    textColor: AppColors.white,
                                  ),
                                ],
                              ),
                              YMargin(30),
                              SeenButton(
                                onTap: () {},
                                textColor: AppColors.buttonTextColor,
                                buttonText: "Login",
                              ),
                              YMargin(30),
                              Center(
                                child: RichText(
                                  softWrap: true,
                                  text: TextSpan(
                                    text: 'Do not have an account?  ',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppColors.white,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Sign Up ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.primary,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            _routerService.replaceWith(
                                                const HomeViewRoute());
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              YMargin(15),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
