import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:price_comparison_app/screens/edit_profile_screen.dart';
import 'package:price_comparison_app/screens/help_screen.dart';
import 'package:price_comparison_app/screens/info_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Uint8List? _image;

  @override
  void initState() {
    super.initState();
    getImage();
  }

  void getImage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? imageData = prefs.getString('image');

    if (imageData != null && imageData.isNotEmpty) {
      try {
        Uint8List bytes = base64Decode(imageData);
        setState(() {
          _image = bytes;
        });
        print("Image data retrieved successfully.");
      } catch (e) {
        print("Error decoding image data: $e");
      }
    } else {
      print("No image data found in SharedPreferences.");
    }
  }

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.lightGreen,
          ),
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
                    color: AppColors.lightGreen),
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.green,
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
                            color: Colors.black12,
                          ),
                          child:
                          // _image != null
                          //     ?
                          //
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 70,
                                width: 70,
                                child: _image != null
                                    ? CircleAvatar(
                                  radius: 70,
                                  backgroundImage: MemoryImage(_image!),
                                )
                                    : Image.asset(AppAssets.zaralogo),
                              ),
                            ),
                          ),
                            //   : Padding(
                            // padding: const EdgeInsets.only(top: 50),
                            // child: Align(
                            //   alignment: Alignment.center,
                            //   child: Container(
                            //     height: 70,
                            //     width: 70,
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(100),
                            //       color: Colors.black12,
                            //     ),
                            //     child: Image.asset(AppAssets.avatar),
                            //   ),
                            // ),
                          //),

                          // Image.asset(AppAssets.avatar, width: 70, height: 70,),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${pro.userModel?.name}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 3,),
                              Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10), // Adjust spacing as needed
                        Icon(
                          Icons.navigate_next,
                          color: AppColors.lightGreen,
                        ),
                      ],
                    ),
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
              SizedBox(height: 20,),
              Container(
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpScreen()));
                              },
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
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
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InfoScreen()));

                              },
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
                            ),
                          ],
                        ),
                      )
                    ],
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
