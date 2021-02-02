import 'package:flutter/material.dart';
import 'package:quiz/widgets/homepage_widgets/playquiz_title.dart';
import 'package:quiz/widgets/homepage_widgets/quiz_section.dart';
import 'package:quiz/theme/ui_helpers.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: symHorizontalpx(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            verticalSpace(screenHeight(context)*0.02),
            playQuizTitle(context),
            verticalSpace(screenHeight(context)*0.05),
            QuizSection()
          ],
        ),

    );
  }
}
