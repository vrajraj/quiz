import 'package:flutter/material.dart';
import 'package:quiz/database/database_model.dart';
import 'package:quiz/database/quiz_section_data.dart';
import 'package:quiz/screens/quiz/quiz.dart';
import 'package:quiz/services/API_manager.dart';
import 'package:quiz/theme/theme_colors.dart';
import 'package:quiz/theme/ui_helpers.dart';

class QuizSection extends StatelessWidget {
  final DatabaseModel databaseModel = DatabaseModel();
  final quizSectionData = QuizSectionData();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            quizTiles(context, quizSectionData.quizSection[0]['title'],
                quizSectionData.quizSection[0]['image']),
            quizTiles(context, quizSectionData.quizSection[1]['title'],
                quizSectionData.quizSection[1]['image']),
          ],
        ),
        Column(
          children: <Widget>[
            verticalSpace(screenHeight(context) * 0.1),
            quizTiles(context, quizSectionData.quizSection[2]['title'],
                quizSectionData.quizSection[2]['image']),
            quizTiles(context, quizSectionData.quizSection[3]['title'],
                quizSectionData.quizSection[3]['image']),
          ],
        ),
      ],
    );
  }


  Widget quizTiles(BuildContext context, String title, String imagePath) {
    return Padding(
      padding: symVerticalpx(screenHeight(context) * 0.01),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => Quiz(subjectName: title,))
              );
            },
            child: Container(
              height: screenWidth(context) * 0.35,
              width: screenWidth(context) * 0.35,
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Card(
                      color:Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Container(
                        height: screenWidth(context) * 0.27,
                        width: screenWidth(context) * 0.27,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent[200],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward,),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    imagePath ?? '', height: screenWidth(context) * 0.25,),
                ],
              ),
            ),
          ),
          Text(title ?? '', style: quizTheme(context)
              .subtitle1
              .apply(color: secondaryColor, fontWeightDelta: 2),)
        ],
      ),
    );
  }
}