import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/utils/constants/strings.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:Seen/widgets/web/custom_background_web.dart';
import 'package:flutter/material.dart';

class ItemsIndividualScreen extends StatefulWidget {
  final String? name;

  const ItemsIndividualScreen({super.key, required this.name});

  @override
  State<ItemsIndividualScreen> createState() => _ItemsIndividualScreenState();
}

class _ItemsIndividualScreenState extends State<ItemsIndividualScreen> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomSheet: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xff2B2B2B),
        ),
        height: 35,
        child: Center(
            child: customText(
                text: '"SEEN" MARKETPLACE @2024',
                fontSize: 12,
                fontWeight: FontWeight.w600,
                textColor: AppColors.white)),
      ),
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,

        title: Row(
          children: [
            customText(
                text: "${widget.name} items",
                fontSize: 14,
                line: 2,
                fontWeight: FontWeight.w400,
                fontstyle: FontStyle.italic,
                textColor: AppColors.white),
          ],
        ),
        iconTheme: IconThemeData(
            color: Colors.white, size: 30), // Set the icon color to white
      ),
      body: MainBodyBgWeb(
        child: SafeArea(
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      right: 15,
                      left: 15,
                      top: 10,
                    ),
                    height: screenHeight * 0.9,
                    margin: EdgeInsets.only(top: 0),
                    child: GridView.builder(
                        controller: _scrollController,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          mainAxisExtent: height / 3.2,
                        ),
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: height / 3.9,
                                  width: double.infinity,
                                  color: AppColors.primaryPink,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              color: Colors.white,
                                            ),
                                            child: Icon(Icons.shopping_basket)),
                                      ),
                                    ],
                                  ),
                                ),
                                YMargin(5),
                                customText(
                                    text: "shopping items name",
                                    fontSize: 14,
                                    line: 2,
                                    fontWeight: FontWeight.w400,
                                    fontstyle: FontStyle.italic,
                                    textColor: AppColors.black),
                                YMargin(2),
                                customText(
                                    text: "N2000",
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontstyle: FontStyle.normal,
                                    textColor: AppColors.black),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
