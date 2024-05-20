import 'package:flutter/material.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:price_comparison_app/screens/compresion_screen.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:price_comparison_app/screens/login/login.dart';
import 'package:price_comparison_app/screens/signup/signup.dart';
import 'package:price_comparison_app/screens/splash_screen.dart';
import 'package:price_comparison_app/tabs/home.dart';
import 'package:provider/provider.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: HomeScreen.routeName,
      initialRoute: provider.firebaseUser!=null? HomeScreen.routeName
          :SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        CompareScreen.routeName: (context) => CompareScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        HomeTab.routeName: (context) => HomeTab(),
      },
      title: 'Flutter Demo',
    );
  }

}
