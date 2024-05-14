import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyconSkirt extends StatelessWidget {
  const BodyconSkirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/179000.jpg",
                        height: 580,
                        width: double.infinity,
                        fit: BoxFit.cover,),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 50,
                            left: 356
                        ),
                        child: Icon(Icons.favorite_border_outlined,
                          size: 40,
                          color: AppColors.yellow,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 50,
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
                          child: Icon(Icons.arrow_back_ios_new,
                            size: 40,
                            color: AppColors.yellow,),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35)
                      ),
                      color:Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        top: 15
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Bodycon Skirt',
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                )),
                          ],
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Text("Product Details: ",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Text("SHEIN Drawstring Front Textured Bodycon Skirt",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$5.75',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGreen
                              ),),
                            ElevatedButton(
                                onPressed: (){
                                  const link= "https://us.shein.com/SHEIN-Drawstring-Front-Textured-Bodycon-Skirt-p-10399305-cat-1732.html?";
                                  launchUrl(
                                      Uri.parse(link),
                                      mode: LaunchMode.externalApplication);
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.lightGreen,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 100,
                                      right: 100
                                  ),
                                  child: Text('Go Shein',style: GoogleFonts.playfairDisplay(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ))
                          ],
                        )


                      ],
                    ),
                  ),
                )

              ],
            )
          ],
        ),

      ),
    );
  }
}
