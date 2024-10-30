import 'package:Seen/utils/constants/spacer.dart';
import 'package:Seen/widgets/custom_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants/colors.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController? textEditingController;
  final bool hasPrefixConstraint;
  final bool isAddress;
  final String? label;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isPassword;
  final bool? isNewPassword;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final String? error;
  final ValueChanged<String>? onChanged;
  final Function(String)? onSubmitted;
  final TextInputType keyboardType;
  final int? maxLines;
  final bool? isEnabled;
  final int? maxLength;
  final String? initialValue;
  final bool? showPasswordRequirementContainer;
  final bool? readonly;
  final Radius? borderRadius;
  final Color? fillColor;
  const AppTextFormField({
    super.key,
    this.hasPrefixConstraint = true,
    this.isAddress = false,
    this.isNewPassword,
    this.suffixIcon,
    this.maxLength,
    this.label,
    this.inputFormatters,
    this.onChanged,
    this.hintText,
    this.error,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.textEditingController,
    this.isPassword = false,
    this.maxLines,
    this.isEnabled,
    this.validator,
    this.onSubmitted,
    this.showPasswordRequirementContainer,
    this.initialValue,
    this.borderRadius,
    this.fillColor,
    this.readonly,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isPasswordShow = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          customText(
              text: '${widget.label}', fontSize: 14, textColor: Colors.white),
        const YMargin(5),
        TextFormField(
          readOnly: widget.readonly ?? false,
          maxLines: widget.maxLines ?? 1,
          inputFormatters: widget.inputFormatters,
          cursorWidth: 0.9,
          maxLength: widget.maxLength,
          enabled: widget.isEnabled,
          onChanged: widget.onChanged,
          onFieldSubmitted: widget.onSubmitted,
          keyboardType: widget.keyboardType,
          controller: widget.textEditingController,
          obscureText: isPasswordShow ? false : widget.isPassword,
          validator: widget.validator,
          style: GoogleFonts.poppins(fontSize: 12, color: Colors.white),
          initialValue: widget.initialValue,
          decoration: InputDecoration(
            prefixIconConstraints: const BoxConstraints(
              minWidth: 10,
            ),
            disabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            errorText: widget.error,
            border: const OutlineInputBorder(
                //borderSide: BorderSide(color: AppColors.greyOnboading),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: widget.maxLines == null
                ? const EdgeInsets.only(left: 10)
                : const EdgeInsets.all(10),
            errorStyle: const TextStyle(fontSize: 14),
            // suffixIcon:  showPasswordIcon(widget.isPassword),

            suffixIcon: (() {
              if (widget.isPassword) {
                return showPasswordIcon(widget.isPassword);
              } else {
                return Container(
                  width: 75,
                  color: Colors.transparent,
                  child: widget.suffixIcon,
                );
              }
            }()),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.dmSans(
                textStyle: TextStyle(
                    color: Colors.white24,
                    fontWeight: FontWeight.w500,
                    fontSize: 12)),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(15),
                    child: widget.prefixIcon,
                  )
                : null,
            // suffix: widget.suffixIcon,
            fillColor: widget.fillColor ?? Colors.white.withOpacity(0.1),
            filled: true,
            //enabledBorder: AppColors.normalBorder,
            //errorBorder: AppColors.errorBorder,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(
                  widget.borderRadius ?? const Radius.circular(10)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.primary),
              borderRadius: BorderRadius.all(
                  widget.borderRadius ?? const Radius.circular(10)),
            ),
            focusedErrorBorder: AppColors.normalBorder,
          ),
        ),
      ],
    );
  }

  showPasswordIcon(bool isPassword) {
    if (isPassword) {
      if (isPasswordShow) {
        return IconButton(
          icon: const Icon(
            size: 18,
            Icons.visibility,
            color: AppColors.primary,
          ),
          onPressed: () => setState(() {
            isPasswordShow = !isPasswordShow;
          }),
        );
      }
      return IconButton(
        icon: const Icon(
          Icons.visibility_off,
          size: 18,
          color: AppColors.primary,
        ),
        onPressed: () => setState(() {
          isPasswordShow = !isPasswordShow;
        }),
      );
    }
  }
}
