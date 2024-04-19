import 'package:flutter/material.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:price_comparison_app/screens/splash_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
      title: 'Flutter Demo',
    );
  }
}
