import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/featured_product_list.dart';
import 'package:price_comparison_app/screens/most_popular_list.dart';
import 'package:price_comparison_app/screens/best_seller_list.dart';
import 'package:price_comparison_app/screens/search_screen.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeTab extends StatelessWidget {
  static const String routeName = "hometab";
  HomeTab({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        toolbarHeight: 50,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Pricewise',
              style: GoogleFonts.pacifico(
                  color: AppColors.lightGreen,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 15,left: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));
                },
                child: Container(
                  height: 55,
                  width: 450,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: AppColors.lightGreen
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Search",
                        style: GoogleFonts.playfairDisplay(
                            color: AppColors.lightGreen,
                            fontSize: 15,
                            fontWeight: FontWeight.w300
                        )),
                        Icon(Icons.search,color: AppColors.lightGreen,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 80
                    ),
                    child: InkWell(
                      onTap: (){
                        const link= "https://www.amazon.eg/";
                        launchUrl(
                          Uri.parse(link),
                          mode: LaunchMode.externalApplication
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.white
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(AppAssets.amazon,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30
                    ),
                    child: InkWell(
                      onTap: (){
                        const link= "https://ar.shein.com/";
                        launchUrl(
                            Uri.parse(link),
                            mode: LaunchMode.externalApplication
                        );
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.white
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(AppAssets.shein,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 30
                    ),
                    child: InkWell(
                      onTap: (){
                        const link= "https://www.zara.com/";
                        launchUrl(
                            Uri.parse(link),
                            mode: LaunchMode.externalApplication
                        );                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.white
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(AppAssets.zara,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 641,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35)
                ),
                color:AppColors.white
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Featured Product",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 20
                        )),
                      ),
                      SizedBox(height: 20,),
                      FeaturedProductList(),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Most Popular",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20
                          )),
                      ),
                      SizedBox(height: 20,),
                      MostPopularList(),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Best Seller",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 20
                          )),
                      ),
                      SizedBox(height: 20,),
                      BestSellerList(),
                      SizedBox(height: 200,)


                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
