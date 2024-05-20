import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../app_colors/app_color.dart';
import 'home_screen.dart';

class Blue_Pants extends StatelessWidget {
  const Blue_Pants ({Key? key}) : super(key: key);

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
                      Image.asset("assets/images/155000.jpg",
                        height: 480,
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
                  height: 400,
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
                        top: 30
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('BAM Women',
                                style: GoogleFonts.playfairDisplay(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                )),
                          ],
                        ),
                        SizedBox(height: 60,),
                        Row(
                          children: [
                            Text("Product Details: ",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Text(" BAM Women's Heavy Milton Sweatpant in Blue, 100% Cotton, Sweatpant for Women, Casual and Comfortable Wear",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 110,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$599',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGreen
                              ),),
                            ElevatedButton(
                                onPressed: (){
                                  const link= "https://www.amazon.eg/-/en/BAM-Womens-Milton-Sweatpant-Comfortable/dp/B0CND9DKGG";
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
