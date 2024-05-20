import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(context: context,
        builder: (context) {
          return AlertDialog(
            content: Text("Password reset link sent! check your email"),
          );
        },
      );
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Enter Your E-mail we will you a password reset link ",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.green),
                    borderRadius: BorderRadius.circular(12)),
                hintText: "E-mail",
                fillColor: AppColors.green,
                filled: true,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: passwordReset,
            child: Text("Reset Password",
                style: TextStyle(color: AppColors.white)),
            color: AppColors.lightGreen,
          ),
        ],
      ),
    );
  }
}
