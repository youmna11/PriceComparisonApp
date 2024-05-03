import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50,right: 15,left: 15),
        child: Column(
          children: [
            TextField(
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(color: AppColors.lightGreen)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.lightGreen),
                      borderRadius: BorderRadius.circular(50)),
                  suffixIcon: Icon(Icons.search, color: AppColors.lightGreen),
                  labelText: "Search",
                  contentPadding: EdgeInsets.all(12),
                  labelStyle: GoogleFonts.playfairDisplay(
                      color: AppColors.lightGreen,
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                  filled: true,
                  fillColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
