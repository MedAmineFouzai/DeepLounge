import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:DeepLounge/screens/Home.dart';
import 'package:DeepLounge/auth/User.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeepLounge',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
        backgroundColor: Colors.green[400],
        image: Image.asset("images/coffe1.png"),
        photoSize: 100.0,
        title: Text(
          'Deep Lounge',
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Italianno",
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 50.0),
        ),
        seconds: 5,
        loaderColor: Colors.white,
        navigateAfterSeconds: SafeArea(
          child: AppUser(),
        ),
      ),
    );
  }
}
