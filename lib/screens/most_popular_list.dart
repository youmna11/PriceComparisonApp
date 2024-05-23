import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/screens/details_screen.dart';


class MostPopularList extends StatelessWidget {
  const MostPopularList({Key? key}) : super(key: key);

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Relaxed Fit Jacket' , itemPrice: 79.9, itemImage: "assets/images/5000.jpg", itemBrand: "Zara", itemDescription: "Relaxed fit jacket. Contrasting lapel collar and long sleeves with buttoned cuffs. Front pouch pocke..", itemLink: "https://www.zara.com/us/en/contrasting-collar-jacket-p06987331.html",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/5000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Relaxed fit jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$79.9',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Workout Tops' , itemPrice: 4, itemImage: "assets/images/20.jpg", itemBrand: "Amazon", itemDescription: "Mippo Womens Workout Tops Yoga Tops Open Back Tank Tops Loose Fit Athletic Tops Exercise Tennis Shirts Muscle Tank Summer Gym Workout Clothes for Women 2021 Black XS", itemLink: "https://www.amazon.in/Mippo-Backless-Athletic-Exercise-Activewear/dp/B07T5SLS7P",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/20.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text("Workout Tops",
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$4',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Padded Jacket' , itemPrice: 59.9, itemImage: "assets/images/51000.jpg", itemBrand: "Zara", itemDescription: "Padded jacket made of technical fabric. High collar and long sleeves. Welt pockets at hip. Elasticized trim. Front zip closure.", itemLink: "https://www.zara.com/us/en/lightweight-puffer-jacket-p04302520.html",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/51000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Padded jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$59.9',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Blazer' , itemPrice: 169, itemImage: "assets/images/1000.jpg", itemBrand: "Zara", itemDescription: "Straight fit blazer. Pointed lapel collar and long sleeves with buttoned cuffs. Welt pockets at hip ...", itemLink: "https://www.zara.com/us/en/tuxedo-jacket-p08896675.html",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/1000.jpg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Blazer',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$169',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(itemName:'Jacket' , itemPrice: 169, itemImage: "assets/images/454545.jpeg", itemBrand: "Amazon", itemDescription: "Jacket made of faux leather faux shearling with fleece interior. Tabbed lapel collar. Long sleeves. Zip pockets at hip. Front zip closure.", itemLink: "https://www.amazon.com/IBOXQ-Winter-Outerwear-Womens-Shoulder/dp/B0CMM9X15Z?th=1",)));
                      },
                      child: Container(
                        height: 200,
                        width: 143,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("assets/images/454545.jpeg",
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    Text('Jacket',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        )),
                    Text('\$30.1',
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
