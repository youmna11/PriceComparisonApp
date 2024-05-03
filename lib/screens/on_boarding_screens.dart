import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/app_strings/app_strings.dart';
import 'package:price_comparison_app/models/on_boarding_model.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:price_comparison_app/screens/login/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class OnBoardingScreens extends StatelessWidget {
  OnBoardingScreens({Key? key}) : super(key: key);
  PageController controller = PageController();



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: PageView.builder(
          itemCount: OnBoardingModel.onBoardingScreens.length,
          controller: controller,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(top: 6.4),
              child: Column(
                children: [
                  index!=3 ?Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(AppStrings.skip,
                        style: TextStyle(
                            color: AppColors.lightGreen,
                            fontSize: 15,
                            fontWeight:   FontWeight.bold
                        ),),
                      onPressed: (){
                        controller.jumpToPage(2);
                      },
                    ),
                  )
                      :SizedBox(height: 45,),
                  // SizedBox(height: 10,),
                  Image.asset(OnBoardingModel.onBoardingScreens[index].imgPath),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Text(
                        OnBoardingModel.onBoardingScreens[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColors.lightGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                        ),),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Text(
                          OnBoardingModel.onBoardingScreens[index].subTitle,
                          style: TextStyle(
                              color: AppColors.lightGreen,
                              fontWeight: FontWeight.w300,
                              fontSize: 15
                          ),),
                      ),
                      SizedBox(height: 108,),
                      index!=3 ? Padding(
                        padding: const EdgeInsets.only(left: 24,right: 24),
                        child: Row(
                          children: [
                            SmoothPageIndicator(
                              controller: controller,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                activeDotColor: AppColors.lightGreen,
                                dotColor: AppColors.yellow,
                                dotWidth: 15,
                                dotHeight: 5,
                                spacing: 8,
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              child: Icon(
                                Icons.navigate_next,
                                color: AppColors.lightGreen,
                                size: 50,
                              ),
                              onTap:(){
                                controller.nextPage(
                                    duration: const Duration(milliseconds: 1000),
                                    curve: Curves.fastLinearToSlowEaseIn);
                              },
                            )
                          ],
                        ),
                      ):
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacementNamed(context, LoginScreen.routeName);

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(color: AppColors.lightGreen,
                                width: 3)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20
                                ),
                                child: Row(
                                  children: [
                                    Text("Get Started",
                                      style: TextStyle(
                                          color: AppColors.lightGreen,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    SizedBox(width: 100,),
                                    Icon(
                                      Icons.navigate_next,
                                      color: AppColors.lightGreen,
                                      size: 50,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
