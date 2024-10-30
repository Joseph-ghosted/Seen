import 'package:Seen/ui/views/marketplace/widgets/items_individual.dart';
import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/seen_button.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:stacked/stacked.dart';

import 'marketplace_viewmodel.dart';

class MarketplaceViewMobile extends ViewModelWidget<MarketplaceViewModel> {
  const MarketplaceViewMobile({super.key});

  @override
  Widget build(BuildContext context, MarketplaceViewModel viewModel) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        leading: SizedBox(),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
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
            customText(
                text: "MarketPlace",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                textColor: AppColors.cartWhiteBg)
          ],
        ),
        iconTheme: IconThemeData(
            color: Colors.white, size: 30), // Set the icon color to white
      ),
      body: MainBodyBgWeb(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: screenHeight / 5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.black,
                ),
                child: Stack(
                  children: [
                    Container(
                      height: (screenHeight / 5) / 1.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            customText(
                                text: '"Seen" Marketplace',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                isNaira: false,
                                textColor: AppColors.black),
                            YMargin(8),
                            customText(
                                text:
                                    'Products here are sold by creators/escorts for experiences that enhance the casual dating atmosphere.',
                                fontSize: 16,
                                line: 4,
                                textAlignment: TextAlign.center,
                                fontWeight: FontWeight.w500,
                                isNaira: false,
                                textColor: AppColors.black),
                            YMargin(20),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          "assets/images/shopping-basket_12100286.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              YMargin(15),
              customText(
                text: "Items Category",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                textColor: AppColors.cartWhiteBg,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: viewModel.imageMarket!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ItemsIndividualScreen(
                                      name: viewModel.imageMarketText![index]
                                          ['title'],
                                    )),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black12,
                          ),
                          child: Stack(
                            children: [
                              Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black12,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      viewModel.imageMarket![index],
                                    ),
                                  ),
                                ),
                                child: Container(
                                  height: 200,
                                  width: double.infinity,
                                  color: Colors.black45,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      customText(
                                          text: viewModel
                                              .imageMarketText![index]['title'],
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          isNaira: false,
                                          textColor: AppColors.white),
                                      YMargin(8),
                                      customText(
                                          text: viewModel
                                              .imageMarketText![index]['sub'],
                                          fontSize: 16,
                                          line: 4,
                                          textAlignment: TextAlign.center,
                                          fontWeight: FontWeight.w500,
                                          isNaira: false,
                                          textColor: AppColors.white),
                                      YMargin(20),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
