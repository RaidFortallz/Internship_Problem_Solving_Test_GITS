import 'package:flutter/material.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';

class ButtonCustom extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;
  final double? height;
  final double? width;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color textColor;

  const ButtonCustom({
    super.key,
    required this.label,
    required this.color,
    required this.onTap,
    this.height,
    this.width,
    this.fontsize,
    this.fontWeight,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        splashColor: ColorsApp.abu.withValues(alpha: 0.2),
        highlightColor: ColorsApp.abu.withValues(alpha: 0.1),
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsApp.navyGelap, width: 1.5),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontsize,
                fontWeight: fontWeight,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
