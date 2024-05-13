import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/screens/product_screen.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 270,
                  width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AppAssets.product,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('T-Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('300.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Amazon',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ))
                  ],
                ),
              )

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 270,
                  width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AppAssets.product,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('T-Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('300.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Amazon',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ))
                  ],
                ),
              )

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 270,
                  width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AppAssets.product,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('T-Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('300.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Amazon',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ))
                  ],
                ),
              )

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 270,
                  width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AppAssets.product,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('T-Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('300.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Amazon',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ))
                  ],
                ),
              )

            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 270,
                  width: 143,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(AppAssets.product,
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('T-Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('300.00 EGP',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Amazon',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.bold
                        ))
                  ],
                ),
              )

            ],
          )
        ],
      ),
    );
  }
}
