import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';

class SheinRate extends StatelessWidget {
  const SheinRate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar:  AppBar(
        backgroundColor: AppColors.lightGreen,
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Shein',
              style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 20
              )),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
            )
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 200,
              ),
              child: Container(
                height: 110,
                width: 200,
                child: Image.asset(AppAssets.sheinlogo,
                  fit: BoxFit.cover,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_rate_sharp,color: Colors.yellow,),
              Icon(Icons.star_rate_sharp,color: Colors.yellow,),
              Icon(Icons.star_rate_sharp,color: Colors.yellow),
              Icon(Icons.star_rate_sharp,color: Colors.yellow),
              Icon(Icons.star_rate_sharp),
            ],
          ),
          SizedBox(height: 20,),
          Text("Average rating: 4.0")

        ],
      ),
    );
  }
}
