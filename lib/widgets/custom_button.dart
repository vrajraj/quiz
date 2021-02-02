import 'package:flutter/material.dart';
import 'package:quiz/theme/theme_colors.dart';
import 'package:quiz/theme/ui_helpers.dart';

Widget customButton(BuildContext context, action, String text){
  return RaisedButton(
    onPressed:action,
    color: Colors.pinkAccent,
    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
    child: Text(text,style: quizTheme(context).subtitle2.apply(
        fontWeightDelta: 2,
        fontSizeDelta: 3,
        color: secondaryColor,
        letterSpacingFactor:2
    ),),
  );
}