import 'package:flutter/material.dart';
import 'package:my_dictionary/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Submision App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen()

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
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/book-logo.png'),
            SizedBox(height: 16.0),
            Text(
              'Welcome To My Dictionary Japanase',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



