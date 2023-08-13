import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class Opening extends StatelessWidget {
  const Opening({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'images/download.png',
            fit: BoxFit.cover,
          ),
          // Overlay Image
          Positioned(
            top: 100, // Adjust the position as needed
            left: 90, // Adjust the position as needed
            child: Image.asset(
              'images/quiz2.png',
              width: 200,
              height: 200,
            ),
          ),

          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                'Iti quiz app',
                style: TextStyle(
                    color: Colors.amber, fontSize: 60, fontFamily: 'Fasthand'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'we are creative, enjoy our app',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: 'Fasthand'),
              ),
              Spacer(),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        // انا هنا محتاج امتب الكود او الامر اللي هيخليني انفيجيت علي اللوجن

                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                 const Login_Screen(),
                          ),
                        );
                      },
                      child: Text("Start"))),
            ],
          )),
        ],
      ),
      /* floatingActionButton: Container(
            height: 35,
            width: double.infinity,
            color: Color(0xff4CAF50),
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    // انا هنا محتاج امتب الكود او الامر اللي هيخليني انفيجيت علي اللوجن

                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Login_Screen(),
                      ),
                    );
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
          ),*/
    );
  }
}
