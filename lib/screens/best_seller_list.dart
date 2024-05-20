import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/screens/bam_summer_tshirt.dart';
import 'package:price_comparison_app/screens/blue_pants.dart';
import 'package:price_comparison_app/screens/casual_cami_tirm.dart';
import 'package:price_comparison_app/screens/elegant_lace_tirm.dart';
import 'package:price_comparison_app/screens/long_selve_shirt.dart';
import 'package:price_comparison_app/screens/sportswear.dart';



class  BestSellerList extends StatelessWidget {
  const BestSellerList ({Key? key}) : super(key: key);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sportswaer()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/130000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Sportswear',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$399.99',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Bam_Summer()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/134000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text("BAM T-Shirts",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$295',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Elegant_Lace_Trim()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/139000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Elegant Shirts ',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$999',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Long_Sleeve_Shirt()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/140000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Long Sleeve Shirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$235',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Casual_Cami()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/145000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Cami Shirts..',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$18.99',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Blue_Pants()));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          //assets/images/4000.jpg
                          child: Image.asset("assets/images/155000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('BAM Women',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$599.9',
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
        ],
      ),
    );
  }
}