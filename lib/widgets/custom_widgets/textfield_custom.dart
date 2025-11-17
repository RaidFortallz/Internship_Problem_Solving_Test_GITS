import 'package:flutter/material.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';
import 'package:internship_problemsolving_test/utils/input_decoration_utils.dart';

class TextfieldCustom extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction? textInputAction;
  final bool obsecureText;
  final double? height;
  final double? width;

  const TextfieldCustom({
    super.key,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.textInputAction,
    this.obsecureText = false,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        obscureText: obsecureText,
        autocorrect: false,
        autofocus: false,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: ColorsApp.abu.withValues(alpha: 0.6),
          ),
          enabledBorder: defaultBorder(ColorsApp.abu.withValues(alpha: 0.3)),
          focusedBorder: defaultBorder(ColorsApp.abu.withValues(alpha: 0.9)),
          contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 30),
        ),
      ),
    );
  }
}
