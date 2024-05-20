import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_colors/app_color.dart';
import 'home_screen.dart';

class Long_Sleeve_Shirt extends StatelessWidget {
  const Long_Sleeve_Shirt ({Key? key}) : super(key: key);

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
                      Image.asset("assets/images/140000.jpg",
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
                            Text('Long Sleeve Shirt',
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
                        Text("Womens Casual Long Sleeve Solid Shirt 810-54-2136-91 Blouse .",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$235',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGreen
                              ),),
                            ElevatedButton(
                                onPressed: (){
                                  const link= "https://www.amazon.eg/-/en/Premoda-Womens-Casual-Sleeve-Solid/dp/B0CHFPBWD5";
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
                                    left: 90,
                                    right: 90,
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
