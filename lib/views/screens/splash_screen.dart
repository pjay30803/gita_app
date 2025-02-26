import 'package:flutter/material.dart';
import 'dart:async';

import 'package:srimad_bhagvad_gita/views/screens/Home%20Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 200, // Set width as needed
                height: 200, // Set height as needed
                child: Image.network(
                    "https://media.istockphoto.com/id/918663760/photo/om-good-energy-symbol-3d-render-illustration.jpg?s=612x612&w=0&k=20&c=Jtcq00k_rEmpfQRsDV4coITdCvZJqkMJnaYS5Yabqf0=")),
            SizedBox(height: 20),
            Text(
              'भगवद गीता',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
