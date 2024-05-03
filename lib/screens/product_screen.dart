import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
  PageController controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
            color: AppColors.lightGreen,),
        ),
        leadingWidth: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      height: 251,
                      width: 321,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 89,top: 25),
                          child: Container(
                            height: 200,
                            width: 143,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(AppAssets.product),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 12,
                        left: 256
                      ),
                      child: Icon(Icons.favorite_border_outlined,
                        size: 40,
                        color: AppColors.yellow,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              width: double.infinity,
              height: 434,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('T-Shirt',
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          )),
                       Row(
                         children: [
                           Icon(Icons.star_rate,color: Colors.yellow,size: 25,),
                           Text('(4.5)',
                               style: GoogleFonts.playfairDisplay(
                               fontSize: 14,
                               fontWeight: FontWeight.w400
                           )),
                         ],
                       )
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
                    Text("Material composition , 100% Cotton ,Care instructions Machine Wash ,Closure type Pull On",
                    style: GoogleFonts.playfairDisplay(
                        fontSize: 13,
                        fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Text("About this  item: ",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Material : Cotton \nColor : White \nBrand : Jet \nType : Undershirt \nNeck : Round",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('150.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.lightGreen
                        ),),
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              primary: AppColors.lightGreen,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)
                              )
                            ),
                            child: Text('Go Amazon',style: GoogleFonts.playfairDisplay(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),))
                      ],
                    )


                  ],
                ),
              ),
            )

          ],
        ),

      ),
    );
  }
}
