import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/splash1.png",
                  scale: 0.1, // Adjust the scale based on your design
                ),
                SizedBox(height: 20),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: 400, // Adjust the maximum width
                  ),
                  child: Image.asset(
                    "assets/splash2.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create your own card here",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30, // Adjust the font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Billy is the best solution to monitor all your financial activities",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16, // Adjust the font size
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: Text("Start"),
                    ),
                    SizedBox(width: 20), // Add spacing between buttons
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Skip"),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
