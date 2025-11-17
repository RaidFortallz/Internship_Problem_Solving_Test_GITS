import 'package:flutter/material.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';

class AppbarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final List<Color> gradientColors;

  const AppbarCustom({
    super.key,
    required this.title,
    this.centerTitle = true,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: true,
      centerTitle: true,
      iconTheme: const IconThemeData(color: ColorsApp.putih),
      title: Text(
        title,
        style: const TextStyle(
          color: ColorsApp.putih,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
