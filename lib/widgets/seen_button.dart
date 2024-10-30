import 'package:Seen/utils/constants/colors.dart';
import 'package:Seen/utils/constants/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SeenButton extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  final Color? textColor;
  final String? buttonText;
  final bool hasIcon;
  final Widget? iconWidget;
  final bool isButtonEnabled;
  final bool hasBorder;
  final double? height;
  final double? width;
  final double? fontSize;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  const SeenButton({
    Key? key,
    this.onTap,
    this.color,
    this.textColor,
    this.buttonText,
    this.hasIcon = false,
    this.iconWidget,
    this.isButtonEnabled = true,
    this.hasBorder = false,
    this.height = 50,
    this.borderColor,
    this.fontSize = 14,
    this.width,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverDuration: Duration(milliseconds: 400),
      hoverColor: AppColors.primary,
      onTapDown: (_) => HapticFeedback.lightImpact(),
      onTap: isButtonEnabled ? onTap : null,
      child: Container(
        height: height,
        width: width ?? double.infinity,
        decoration: color != null
            ? BoxDecoration(
                color: !hasBorder ? color : null,
                borderRadius: borderRadius ?? BorderRadius.circular(10),
                border: hasBorder
                    ? Border.all(color: borderColor!)
                    : Border.all(width: 0, color: Colors.transparent),
              )
            : BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffECF15E),
                    Color(0xffD6DD13),
                  ],
                ),
                //color: !hasBorder ? color : null,
                borderRadius: borderRadius ?? BorderRadius.circular(10),
                border: hasBorder
                    ? Border.all(color: borderColor!)
                    : Border.all(width: 0, color: Colors.transparent),
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                buttonText!,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize ?? 16,
                    color: textColor ?? Colors.white),
              ),
            ),
            const XMargin(1),
            hasIcon ? iconWidget! : const SizedBox.shrink(),
            hasIcon
                ? const SizedBox(
                    width: 15,
                  )
                : const SizedBox.shrink(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
