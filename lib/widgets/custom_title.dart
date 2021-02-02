import 'package:flutter/material.dart';
import 'package:quiz/theme/theme_colors.dart';
import 'package:quiz/theme/ui_helpers.dart';

Widget customTitle(BuildContext context,String title){
  return Text(title,
      style: quizTheme(context).headline5.apply(
        color: secondaryColor,
        fontWeightDelta: 2,
      ));
}