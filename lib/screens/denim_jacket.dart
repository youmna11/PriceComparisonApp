import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class DenimJacket extends StatelessWidget {
  const DenimJacket({Key? key}) : super(key: key);

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
                      Image.asset("assets/images/1920000.jpg",
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
                        left: 20,
                        right: 20,
                        top: 15
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Denim Jacket',
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
                        Text("Denim jacket with lapel collar and long sleeves with buttoned cuffs. Flap pockets at chest and welt pockets at hip. All over washed effect and rips. Front button closure.",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$50',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGreen
                              ),),
                            ElevatedButton(
                                onPressed: (){
                                  const link= "https://www.amazon.de/-/en/Dr-Denim-Mens-Eno-Jacket/dp/B08BV1SH9T?th=1";
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
                                  child: Text('Go Amazon',style: GoogleFonts.playfairDisplay(
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
