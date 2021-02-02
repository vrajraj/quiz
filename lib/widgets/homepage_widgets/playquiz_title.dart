import 'package:flutter/material.dart';
import 'package:quiz/theme/theme_colors.dart';
import 'package:quiz/theme/ui_helpers.dart';

Widget playQuizTitle(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Center(
        child: Text('Quiz Time',style: quizTheme(context).headline5.apply(
          color: thirdColor,
          fontWeightDelta: 2,
          fontSizeFactor: 1.2,
          fontSizeDelta: 1
        ),),
      ),
      Center(
        child: Text("pick your category ",
            style: quizTheme(context)
                .subtitle1
                .apply(color: secondaryColor,
            )),
      ),

    ],
  );
}