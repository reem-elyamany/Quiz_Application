import 'package:flutter/material.dart';


import 'Catigory.dart';
//import 'package:quizz_iti_823/Screens/category_screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        body: Stack(
    
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 27, 154, 31),
            child: Center(
              child: Image.asset(
                "images/green_imaje.png",
                height: 100,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 2 / 3, // width: 50,
          width: double.infinity,

          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 226, 216, 216),
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),

          child: Column(children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 16,
            ),

            
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "User name",
               
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 36, 4, 240), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
               
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
                hintText: "Password",
              
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 36, 4, 240), width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(30),
                ),
                
              ),
            ),

            SizedBox(
              height: 8,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("New to quiz app?"),
                
                InkWell(
                  onTap: () {
                    print("Hello we are ITI");
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            SizedBox(
              height: 30,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => CategoryScreen(),
                  ),
                );
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        25.0),
                  ),
                  backgroundColor: Colors.green,
                  elevation: 10,
                  minimumSize: Size(130, 40)),
            ),
            SizedBox(
              height: 15,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.blue,
              size: 50,
            ),
            Text(
              "Touch ID",
              style: TextStyle(color: Colors.grey),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("Remember me"),
                  ],
                ),

               
                InkWell(
                  onTap: () {
                    print("Hello we are ITI");
                  },
                  child: Text(
                    "Forget password",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ]),
        )
      ],
    )

        
        );
  }
}