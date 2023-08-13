import 'package:first_iti/screens/score_scren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QuizzScreen extends StatelessWidget {
  QuizzScreen({super.key});
  List quizName = ["paris", "London", "Moscow", "Rome"];
  List quizColor = [
    Color(0xffF6F1F8),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff7E57C1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'question 1',
              style: TextStyle(fontFamily: 'Fasthand', fontSize: 25),
            ),
            Text(
              'General Test',
              style: TextStyle(fontSize: 25),
            ),
            Icon(Icons.quiz_sharp),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Text(
            'Choise is :',
            style: TextStyle(fontSize: 25, fontFamily: 'Fasthand'),
          )),
          SizedBox(
            height: 2,
          ),
          for (int i = 0; i < 4; i++)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.20),
                  child: Container(
                    height: 60,
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Score(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          quizName[i],
                          style:
                              TextStyle(fontSize: 30, fontFamily: 'Fasthand'),
                        ),
                      ),
                    ),
                  )),
            )
        ],
      ),
    );
  }
}
