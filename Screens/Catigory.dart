import 'package:flutter/material.dart';


import 'quizz.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < 3; i++)
            Expanded(
              child: Container(
                child: ElevatedButton(
                  onPressed: () {
                    // انا هنا محتاج امتب الكود او الامر اللي هيخليني انفيجيت علي اللوجن

                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => QuizzScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(quizName[i]),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
