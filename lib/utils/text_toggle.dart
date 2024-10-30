import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextToggleFunction extends StatelessWidget {
  final String title;

  final String? subTitle;
  final Widget? widget;
  final String? widgetIcon;
  final Function()? iconFunction;
  final Color? iconColor;
  final Color? bgColor;
  final double? size;
  final Color? textColor;
  final bool? iconBool;
  final bool? isSubTitle;
  const TextToggleFunction({
    super.key,
    required this.title,
    this.widget,
    this.subTitle,
    this.widgetIcon,
    this.iconFunction,
    this.iconColor,
    this.bgColor,
    this.size,
    this.textColor,
    this.iconBool,
    this.isSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      color: bgColor ?? Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widgetIcon != null)
                Row(
                  children: [
                    widgetIcon!.contains('marketplace')
                        ? Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: SvgPicture.asset(
                              widgetIcon!,
                              color: iconColor,
                              height: 26,
                            ),
                          )
                        : widgetIcon!.contains('svg')
                            ? Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: SvgPicture.asset(
                                  widgetIcon!,
                                  color: iconColor,
                                  height: 20,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Image.asset(
                                  widgetIcon!,
                                  color: iconColor,
                                  height: 10,
                                ),
                              ),
                    widgetIcon!.contains('marketplace')
                        ? const XMargin(2)
                        : const XMargin(10),
                  ],
                ),
              GestureDetector(
                onTap: iconFunction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customText(
                        text: title,
                        fontSize: size ?? 12,
                        textColor: textColor ?? Colors.white,
                        fontWeight: FontWeight.w600),
                    // Visibility(
                    //   visible: isSubTitle ?? false,
                    //   child: customText(
                    //     text: subTitle!,
                    //     fontSize: size ?? 12,
                    //     textColor: textColor ?? AppColors.primary,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
          Container(child: widget),
        ],
      ),
    );
  }
}
