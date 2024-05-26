import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/on_boarding_screens.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _priceController;
  late AnimationController _wiseController;
  late Animation<double> _logoAnimation;
  late Animation<Offset> _priceAnimation;
  late Animation<double> _wiseAnimation;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _priceController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _wiseController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeIn,
    );

    _priceAnimation = Tween<Offset>(
      begin: Offset(-2.5, 0.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _priceController,
      curve: Curves.easeIn,
    ));

    _wiseAnimation = CurvedAnimation(
      parent: _wiseController,
      curve: Curves.easeIn,
    );

    _logoController.forward().then((_) {
      _priceController.forward().then((_) {
        Future.delayed(const Duration(milliseconds: 500), () {
          _wiseController.forward();
        });
      });
    });

    navigate();
  }

  @override
  void dispose() {
    _logoController.dispose();
    _priceController.dispose();
    _wiseController.dispose();
    super.dispose();
  }

  void navigate() async {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => OnBoardingScreens(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E8E7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _logoAnimation,
              child: Image.asset(AppAssets.logo3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: _priceAnimation,
                  child: Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightMint,
                    ),
                  ),
                ),
                ScaleTransition(
                  scale: _wiseAnimation,
                  child: Text(
                    "wise",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.lightGreen,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
