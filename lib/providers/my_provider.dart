import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:price_comparison_app/shared/network/firebase/firebase_functions.dart';
import '../models/user_model.dart';

class MyProvider extends ChangeNotifier{


  UserModel? userModel;
  User? firebaseUser;

  MyProvider(){
    firebaseUser= FirebaseAuth.instance.currentUser;
    if(firebaseUser!=null){
      initMyUser();
    }
  }

  void initMyUser() async{
    firebaseUser=FirebaseAuth.instance.currentUser;
    userModel= (await FirebaseFunctions.readUser(firebaseUser!.uid)) as UserModel?;
    notifyListeners();
  }

  void logOut(){
    FirebaseAuth.instance.signOut();
    notifyListeners();
  }



}