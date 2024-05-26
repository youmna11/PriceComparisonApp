import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _displayNameController = TextEditingController();
  final _displayEmailController = TextEditingController();
  final _displayNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserProfile();
  }

  Future<void> _loadUserProfile() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc = await _firestore.collection('Users').doc(user.uid).get();
      _displayNameController.text = userDoc['name'];
      _displayEmailController.text = userDoc['email'];
      _displayNumberController.text = userDoc['phone']; // Correct this line
    }
  }

  Future<void> _saveProfile() async {
    User? user = _auth.currentUser;
    if (user != null) {
      await _firestore.collection('Users').doc(user.uid).update({
        'name': _displayNameController.text,
        'email': _displayEmailController.text,
        'phone': _displayNumberController.text,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile updated successfully')),
      );

     await Future.delayed(Duration(seconds: 2), () {
        Navigator.pop(context);
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
            color: Colors.white,),
        ),
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Edit Profile',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 100,),
              TextField(
                controller: _displayNameController,
                decoration: InputDecoration(labelText: 'Display Name',
                    labelStyle: TextStyle(color: AppColors.lightGreen)),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _displayEmailController,
                decoration: InputDecoration(labelText: 'Display Email',
                    labelStyle: TextStyle(color: AppColors.lightGreen)),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _displayNumberController,
                decoration: InputDecoration(labelText: 'Display Number',
                    labelStyle: TextStyle(color: AppColors.lightGreen)),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.lightMint),
                onPressed: (){
                  _saveProfile();
                  pro.updateData(_displayNameController.text, _displayNumberController.text);
                },
                child: Text('Save',style: TextStyle(color: AppColors.lightGreen),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    _displayEmailController.dispose();
    _displayNumberController.dispose();
    super.dispose();
  }
}
