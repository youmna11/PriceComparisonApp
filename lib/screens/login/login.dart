import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:price_comparison_app/screens/signup/signup.dart';
import 'package:price_comparison_app/shared/network/firebase/firebase_functions.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "login";
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xffE6E8E7),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        scrollDirection: Axis.vertical,
        child:Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50),
              Image.asset(AppAssets.logo, width: 300, height: 250),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "E-MAIL",
                  labelStyle: TextStyle(
                    color: AppColors.lightGreen,
                    fontSize: 15
                  ),
                  prefixIcon: Icon(Icons.alternate_email,color: AppColors.lightGreen,),
                  enabledBorder: OutlineInputBorder(
                     // borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: AppColors.lightGreen,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                       // borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                    color: AppColors.lightGreen,
                    width: 2.0,
                  )),
                ),
                validator: (value) {
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#%&'*+-/=?^_`{|}+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (value.isEmpty) {
                    return " Enter Email";
                  } else if (!emailValid) {
                    return "Enter Valid Email";
                  }
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: passController,
                obscureText: passToggle,
                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(
                      color: AppColors.lightGreen,
                      fontSize: 15
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(),
                    borderSide: const BorderSide(
                      color: AppColors.lightGreen,
                      width: 1.0,
                    ),
                  ),
                  prefixIcon: Icon(Icons.lock,color: AppColors.lightGreen,),
                  focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                    color: AppColors.lightGreen,
                    width: 2.0,
                  )),
                  suffixIcon: InkWell(
                    onTap: () {
                      AppColors.lightGreen;
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(
                        passToggle ? Icons.visibility : Icons.visibility_off,color: AppColors.lightGreen,),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter password";
                  } else if (passController.text.length < 6) {
                    return "Password Length Should be more than 6 characters ";
                  }
                },
              ),
              SizedBox(height: 60),
              InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    FirebaseFunctions.login(emailController.text,
                        passController.text,(){
                          pro.initMyUser();
                          Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
                        });
                  }
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Color(0xff668983),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member join now  !",
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupScreen()));
                        // Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color(0xff668983),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

