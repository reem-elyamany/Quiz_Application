import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F1F8),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: 400,
              // ),
              Text(
                'Hello,',
                style: TextStyle(
                  fontFamily: 'Fasthand',
                  fontSize: 70,
                ),
              ),
              Text(
                'Reem',
                style: TextStyle(
                  color: Color(0xffEFDEFF),
                  fontFamily: 'Fasthand',
                  fontSize: 70,
                ),
              ),
            ],
          ),

          // SizedBox(
          //   height: 10,
          // ),
          Text(
            'Your Score is T/T',
            style: TextStyle(
              fontFamily: 'Fasthand',
              fontSize: 50,
            ),
          ),
          // SizedBox(
          //   height: 400,
          // ),
          Spacer(
            flex: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.20),
              child: Container(
                  height: 60,
                  width: 400,
                  color: Color(0xff7E57C2),
                  child: Center(
                    child: Text(
                      'Reset Quiz',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Fasthand',
                          color: Colors.white),
                    ),
                  )),
            ),
          ),
          Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
