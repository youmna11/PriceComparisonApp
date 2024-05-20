import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/app_strings/app_strings.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:price_comparison_app/screens/login/login.dart';
import 'package:price_comparison_app/screens/setting_screen.dart';
import 'package:price_comparison_app/utils.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatefulWidget {
  static const String routeName = "profiletab";

  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  Uint8List? _image;

  void selectedImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }


  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Account',
            style: GoogleFonts.playfairDisplay(
                color: Colors.white, fontWeight: FontWeight.w300, fontSize: 20),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                    color: AppColors.lightGreen,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      _image != null
                          ? Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  child: CircleAvatar(
                                    radius: 100,
                                    backgroundImage: MemoryImage(_image!),
                                  ),
                                )
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.black12,
                                  ),
                                  child: Image.asset(AppAssets.avatar),
                                ),
                              ),
                            ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: selectedImage,
                      child: Text(
                        'Update image ',
                        style: TextStyle(
                            color: AppColors.lightGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 400.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(35),
                            topLeft: Radius.circular(35)),
                        color: AppColors.blue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: AppColors.lightGreen, width: 1),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Name  ",
                                    style: TextStyle(
                                        color: Colors.black87, fontSize: 20)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "${pro.userModel?.name}",
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.lightGreen, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Email  ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20)),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${pro.userModel?.email}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.lightGreen, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Number  ",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 20)),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "${pro.userModel?.phone}",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SettingScreen()));
                          },
                          child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.lightGreen, width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      AppStrings.setting,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: AppColors.lightGreen,
                                    size: 25,
                                  ),
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            pro.logOut();
                            Navigator.pushNamedAndRemoveUntil(context,
                                LoginScreen.routeName, (route) => false);
                          },
                          child: Container(
                              height: 50,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColors.lightGreen, width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      AppStrings.signout,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  Icon(
                                    Icons.navigate_next,
                                    color: AppColors.lightGreen,
                                    size: 25,
                                  ),
                                ],
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
