import 'package:flutter/material.dart';
import 'screen/login.dart'; // Import your Signup screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Add routes
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFFFFF), Color(0xFF0FA956)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 54),
                child: Image.asset(
                  'assets/images/flash_scree_home_logo.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 100),
                child: Text(
                  "Shop Your Daily Necessarys",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 250,
                child: Builder(
                  builder: (context) => ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.green,
                      padding: EdgeInsets.all(24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
