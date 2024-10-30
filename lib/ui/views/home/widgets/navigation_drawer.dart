import 'package:Seen/app/app.locator.dart';
import 'package:Seen/app/app.router.dart';
import 'package:Seen/ui/views/home/home_viewmodel.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/images.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/helpers/dimens.dart';
import 'package:Seen/utils/text_toggle.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavigationDrawerWidget extends ViewModelWidget<HomeViewModel> {
  final _routerService = locator<RouterService>();

  NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Drawer(
      width: 350,
      child: Material(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const YMargin(4),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          child: Padding(
                            padding: PAD_ALL_5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade200,
                              ),
                            ),
                          ),
                        ),
                        const YMargin(5),
                        customText(
                          text: "name",
                          fontSize: 16,
                          textColor: AppColors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w600,
                        ),
                        const YMargin(3),
                        customText(
                          text: "email",
                          fontSize: 12,
                          textColor: AppColors.white.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: AppColors.primaryPink.withOpacity(0.3),
                    thickness: 2,
                  ),
                  TextToggleFunction(
                    title: "Home",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xff33A353),
                    widgetIcon: AppImages.homeLocation,
                    //iconFunction: () => context.push(AppRoutes.myOrders),
                  ),
                  const YMargin(1),
                  TextToggleFunction(
                    title: "Gallery",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xff04ABEE),
                    widgetIcon: AppImages.gallery,
                    // iconFunction: () => context.push(AppRoutes.myServices),
                  ),
                  const YMargin(1),
                  TextToggleFunction(
                    title: "Discover",
                    size: 15,
                    iconBool: false,

                    iconColor: Color(0xffA484FB),
                    widgetIcon: AppImages.discover,
                    iconFunction: () => viewModel.actionRouteToDetectionMap(),
                    // iconFunction: () => context.push(AppRoutes.paymentScreen),
                  ),
                  const YMargin(1),
                  const TextToggleFunction(
                    title: "Categories",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xffDE0322),
                    widgetIcon: AppImages.layout,
                    // iconFunction: () => context.push(AppRoutes.helpView),
                  ),
                  Divider(
                    color: AppColors.primaryPink.withOpacity(0.3),
                    thickness: 2,
                  ),
                  YMargin(5),
                  customText(
                      text: "START EARNING",
                      fontSize: 14,
                      textColor: Colors.white),
                  YMargin(10),
                  TextToggleFunction(
                    title: "Boardcast yourself",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xffE7A847),

                    widgetIcon: AppImages.boardcast,
                    // iconFunction: () => context.push(AppRoutes.settingView),
                  ),
                  const YMargin(1),
                  TextToggleFunction(
                    title: "Escort Sign up",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xff04ABEE),
                    widgetIcon: AppImages.signup,
                    //iconFunction: () => context.push(AppRoutes.privacyView),
                  ),
                  const YMargin(1),
                  const TextToggleFunction(
                    title: "Referral",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xffA484FB),
                    widgetIcon: AppImages.link,
                    //iconFunction: () => context.push(AppRoutes.privacyView),
                  ),
                  const YMargin(1),
                  TextToggleFunction(
                    title: "MarketPlace 😜",
                    size: 15,
                    iconBool: false,
                    iconColor: Color(0xffF82CA7),
                    widgetIcon: AppImages.marketplace,
                    iconFunction: () =>
                        viewModel.actionRouteToMarketPlaceView(),
                  ),

                  Divider(
                    color: AppColors.primaryPink.withOpacity(0.3),
                    thickness: 2,
                  ),
                  YMargin(5),
                  customText(
                      text: "Recommended Top Escort".toUpperCase(),
                      fontSize: 14,
                      textColor: Colors.white),
                  YMargin(10),
                  // const Divider(
                  //   color: AppColors.textfieldBG,
                  //   thickness: 2,
                  // ),
                  // TextToggleFunction(
                  //     bgColor: AppColors.white,
                  //     title: "Sign Up",
                  //     size: 15,
                  //     textColor: AppColors.red,
                  //     // widgetIcon: AppImages.logout,
                  //     iconFunction: () {}),
                  // const YMargin(30),
                  Container(
                    height: 500,
                    width: double.infinity,
                    //color: Colors.green,
                    child: ListView.builder(
                      itemCount: 8,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => _routerService
                              .replaceWith(const EscortProfileViewRoute()),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.blue,
                                ),
                                XMargin(8),
                                customText(
                                  text: "PennyBubbleButt",
                                  fontSize: 12,
                                  textColor: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                XMargin(5),
                                SvgPicture.asset(
                                  "assets/images/verified.svg",
                                  height: 12,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  YMargin(30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      customText(
                        text: "Copyright ",
                        fontSize: 11,
                        textColor: AppColors.white.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                      // SvgPicture.asset(
                      //   AppImages.copyright,
                      //   height: 12,
                      // ),
                      customText(
                        text: " 2023 all rights reserved lucepts",
                        fontSize: 11,
                        textColor: AppColors.white.withOpacity(0.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  YMargin(20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
