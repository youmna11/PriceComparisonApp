import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/screens/details_screen.dart';



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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Sportswear' , itemPrice: 399.99, itemImage: "assets/images/130000.jpg", itemBrand: "Amazon", itemDescription: "Ravin womens Women Sweat Shirt Ribbed Band Neck Printed Versatile Jacket Sweatshirt", itemLink: "https://www.amazon.eg/-/en/Ravin-Printed-Off-White-Sweatshirt-Multicolour/dp/B0CNZJ38M9",)));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'BAM Summer T-Shirts' , itemPrice: 295, itemImage: "assets/images/134000.jpg", itemBrand: "Amazon", itemDescription: "BAM Oversized Summer T-Shirts for Women | White Casual Short Sleeve Oversized T-Shirt | Round Neck Cotton Women Short T-Shirts | Oversized Plain Home Wear T-Shirts for Women.", itemLink: "https://www.amazon.eg/-/en/Nileton-Sport-Top-T-Shirt-T-shirt/dp/B09XVGHPWN",)));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Elegant Lace Trim Shirts' , itemPrice: 999, itemImage: "assets/images/139000.jpg", itemBrand: "Amazon", itemDescription: "Women’s Elegant Lace Trim Shirts Casual Victorian Blouse Long Sleeve Button Down Tops.", itemLink: "https://www.amazon.de/Damen-mit-%C3%84rmeln-Bluse-Ausverkaufsangebote/dp/B0CWH3S2KQ",)));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Long Sleeve Shirt' , itemPrice: 235, itemImage: "assets/images/140000.jpg", itemBrand: "Amazon", itemDescription: "Womens Casual Long Sleeve Solid Shirt 810-54-2136-91 Blouse .", itemLink: "https://www.amazon.eg/-/en/Premoda-Womens-Casual-Sleeve-Solid/dp/B0CHFPBWD5",)));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Casual Cami Shirts Blouses' , itemPrice: 18.99, itemImage: "assets/images/145000.jpg", itemBrand: "Amazon", itemDescription: "Asvivid Graphic Tank Tops for Womens Summer Casual Loose Sleeveless Shirts Dandelion Letter Printed Round Neck Tees.", itemLink: "https://www.amazon.com/Asvivid-Graphic-Sleeveless-Dandelion-Printed/dp/B096G65XK9",)));
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'BAM Women' , itemPrice: 599, itemImage: "assets/images/155000.jpg", itemBrand: "Amazon", itemDescription: "BAM Women's Heavy Milton Sweatpant in Blue, 100% Cotton, Sweatpant for Women, Casual and Comfortable Wear", itemLink: "https://www.amazon.eg/-/en/BAM-Womens-Milton-Sweatpant-Comfortable/dp/B0CND9DKGG",)));
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