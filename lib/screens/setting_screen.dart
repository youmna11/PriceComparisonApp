import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
          color: AppColors.lightGreen,),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.lightGreen
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 70,
                width: 336,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        height: 56,
                        width: 59,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black12
                        ),
                        child: Image.asset(AppAssets.avatar,width: 70,height: 70,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Youmna Essam",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Profile info",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 27,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.navigate_next,
                          color: AppColors.lightGreen,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Text('Setting',
              style: TextStyle(
                color: AppColors.lightGreen,
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 336,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: 59,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.orange
                          ),
                          child: Image.asset(AppAssets.language,width: 70,height: 70,),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Language",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 27,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.navigate_next,
                              color: AppColors.lightGreen,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 336,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        right: 10
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: 59,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.green
                          ),
                          child: Image.asset(AppAssets.notification,width: 70,height: 70,),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Notification",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 27,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.navigate_next,
                              color: AppColors.lightGreen,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 336,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        right: 10
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: 59,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.red
                          ),
                          child: Image.asset(AppAssets.help,width: 70,height: 70,),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Help",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 27,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.navigate_next,
                              color: AppColors.lightGreen,),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 70,
                  width: 336,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        right: 10
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: 59,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.lightRed
                          ),
                          child: Image.asset(AppAssets.info,width: 70,height: 70,),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Info",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 27,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Icon(Icons.navigate_next,
                              color: AppColors.lightGreen,),
                          ),
                        )
                      ],
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
