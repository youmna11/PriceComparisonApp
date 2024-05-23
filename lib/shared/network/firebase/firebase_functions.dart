import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:price_comparison_app/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirebaseFunctions{

  static CollectionReference<UserModel> getUsersCollection(){
    return FirebaseFirestore.instance
        .collection("Users")
        .withConverter<UserModel>(
      fromFirestore: (snapshot, _){
        return UserModel.fromJson(snapshot.data()!);
      },
      toFirestore: (value, _){
        return value.toJson();
      },);

  }

  static Future<void>signUp(String email, String password, String name, int phone)async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      UserModel userModel=UserModel
        (name: name,
          id: credential.user!.uid,
          phone: phone,
          email: email);
      var collection= getUsersCollection();
      var docRef=collection.doc(credential.user!.uid);
      docRef.set(userModel);

      SharedPreferences.getInstance().then((prefs) {

        String userId = credential.user!.uid;
        prefs.setString('userId', userId);
      });

      // credential.user!.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print(e.message);
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print(e.message);
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  static Future<void>login(String email, String password,Function onComplete)async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        SharedPreferences.getInstance().then((prefs) {


          String? userId = value.user?.uid;
          prefs.setString('userId', userId!);
        });
        onComplete();
      });
    } on FirebaseAuthException catch (e) {
      print("Wrong email or password");
      // if (e.code == 'user-not-found') {
      //   print('No user found for that email.');
      // } else if (e.code == 'wrong-password') {
      //   print('Wrong password provided for that user.');
      // }
    }
  }

  static Future<UserModel?> readUser(String userId) async{
    DocumentSnapshot<UserModel> userDoc=
    await getUsersCollection().doc(userId).get();
    return userDoc.data();
  }
}