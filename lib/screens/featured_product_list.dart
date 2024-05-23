import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/screens/details_screen.dart';


class FeaturedProductList extends StatelessWidget {
  const FeaturedProductList({Key? key}) : super(key: key);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Slim fit jacket' , itemPrice: 129, itemImage: "assets/images/3000.jpg", itemBrand: "Zara", itemDescription: "made of viscose blend fabric. Notched lapel collar. Long sleeves with buttoned cuffs...", itemLink: "https://www.zara.com/us/en/stretch-suit-jacket-p01564300.html",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/3000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Slim fit jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$129',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Zara',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Jacket' , itemPrice: 139, itemImage: "assets/images/4000.jpg", itemBrand: "Zara", itemDescription: "Jacket made of faux leather faux shearling with fleece interior. Tabbed lapel collar. Long sleeves. Zip pockets at hip. Front zip closure.", itemLink: "https://www.zara.com/us/en/double-faced-jacket-p08281477.html",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/4000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$139',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Zara',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Bodycon Skirt' , itemPrice: 5.75, itemImage: "assets/images/179000.jpg", itemBrand: "Shein", itemDescription: "SHEIN Drawstring Front Textured Bodycon Skirt", itemLink: "https://us.shein.com/SHEIN-Drawstring-Front-Textured-Bodycon-Skirt-p-10399305-cat-1732.html?",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/179000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Bodycon Skirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$5.75',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Shein',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Denim Jacket' , itemPrice: 50, itemImage: "assets/images/1920000.jpg", itemBrand: "Amazon", itemDescription: "Denim jacket with lapel collar and long sleeves with buttoned cuffs. Flap pockets at chest and welt pockets at hip. All over washed effect and rips. Front button closure.", itemLink: "https://www.amazon.de/-/en/Dr-Denim-Mens-Eno-Jacket/dp/B08BV1SH9T?th=1",)));
                        },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/1920000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Denim jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$50',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Chiffon Skirt' , itemPrice: 9, itemImage: "assets/images/180000.jpg", itemBrand: "Shein", itemDescription: "Shirred Frill Trim Chiffon Skirt", itemLink: "https://us.shein.com/Shirred-Frill-Trim-Chiffon-Skirt-p-8120972-cat-1732.html?mallCode=1",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/180000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Chiffon Skirt',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$9',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 12,
                            fontWeight: FontWeight.w200

                        )),
                    Text('from Shein',
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
