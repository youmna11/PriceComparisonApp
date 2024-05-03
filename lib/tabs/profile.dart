import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/app_strings/app_strings.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:price_comparison_app/screens/login/login.dart';
import 'package:price_comparison_app/screens/setting_screen.dart';
import 'package:provider/provider.dart';


class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 100
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 135,
                    width: 137,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.lightGreen,
                        border: Border.all(color: Colors.white,width: 4)
                    ),
                    child: Image.asset(AppAssets.profile),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 200,
                  left: 230
                ),
                child: Container(
                  height: 38,
                  width: 37,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white
                  ),
                  child: Image.asset(AppAssets.edit),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: (){},
              child: Text('Youmna Essam',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                    topLeft: Radius.circular(35)
                ),
                color:AppColors.blue
            ),
            child: Column(
              children: [
                SizedBox(height: 70,),
                Container(
                  height: 51,
                  width: 331,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: AppColors.lightGreen,
                      width: 1
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10
                        ),
                        child: Icon(Icons.alternate_email,
                        color: AppColors.lightGreen,
                        size: 25,),
                      ),
                      SizedBox(width: 20,),
                      Text(AppStrings.email,
                      style: TextStyle(
                        color: AppColors.lightGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),),
                      

                    ],
                  )
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: Container(
                      height: 51,
                      width: 331,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.lightGreen,
                            width: 1
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20
                            ),
                            child: Text(AppStrings.setting,
                            style: TextStyle(
                                color: AppColors.lightGreen,
                                fontSize: 20,
                                fontWeight: FontWeight.w400
                            ),),
                          )
                        ],
                      )
                  ),
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: (){
                    pro.logOut();
                    Navigator.pushNamedAndRemoveUntil(context,
                        LoginScreen.routeName, (route) => false);
                  },
                  child: Container(
                      height: 51,
                      width: 331,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColors.lightGreen,
                            width: 1
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20
                            ),
                            child:  Text(AppStrings.signout,
                              style: TextStyle(
                                  color: AppColors.lightGreen,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400
                              ),),
                          ),
                          SizedBox(width: 200,),
                          Icon(Icons.navigate_next,
                            color: AppColors.lightGreen,
                            size: 25,),



                        ],
                      )
                  ),
                ),
                SizedBox(height: 40,),


              ],
            ),
          )



        ],
      ),
    );
  }
}
