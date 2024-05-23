import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/models/favorite_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_database/firebase_database.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemLink,
  }) : super(key: key);

  final String itemName;
  final double itemPrice;
  final String itemImage;
  final String itemBrand;
  final String itemDescription;
  final String itemLink;

  // linke = "https://ae89-105-35-104-97.ngrok-free.app/api/products/?search=$itemName"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 70,),
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        height: 500,
                        color: AppColors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(60),
                          child: Container(
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: itemImage.isNotEmpty
                                  ? (itemImage.startsWith('http')
                                  ? Image.network(
                                itemImage,
                                // height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              )
                                  : Image.asset(
                                itemImage,
                                // height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ))
                                  : Container(
                                // height: 200,
                                width: double.infinity,
                                color: Colors.grey[200],
                                child: Icon(
                                  Icons.image,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            // top: 10,
                            left: 356
                        ),
                        child: InkWell(
                          onTap: () async {
                            final FirebaseDatabase database = FirebaseDatabase.instance;
                            DatabaseReference getUsersCollection() {
                              return database.ref().child('Favorite');
                            }
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            String userId =
                                prefs.getString('userId') ?? ''; // Provide a default value

                                FavModel favModel=FavModel(name: itemName, price: itemPrice, description: itemDescription, brand: itemBrand, image:itemImage, url:itemLink );
                            DatabaseReference collection = getUsersCollection();
                            DatabaseReference docRef = collection.child(userId).child("$itemName");
                            docRef.set(favModel.toJson());
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: AppColors.lightGreen,
                                  content: Text('Item added to favorites')),
                            );
                          },
                          child: Icon(Icons.favorite_border_outlined,
                            size: 40,
                            color: AppColors.yellow,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          // top: 50,
                        ),
                        child: InkWell(
                          onTap: (){
                           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                         Navigator.pop(context);
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
                  height: 480,
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
                            Expanded(
                              child: Text(itemName,
                                  style: GoogleFonts.playfairDisplay(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ),
                              maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text("Product Details: ",
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),
                        Text(itemDescription,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 13,
                              fontWeight: FontWeight.w400
                          ),),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$$itemPrice',
                              style: GoogleFonts.playfairDisplay(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.lightGreen
                              ),),
                            ElevatedButton(
                                onPressed: ()async{
                                 // const link= $link;
                                //   launchUrl(
                                //       Uri.parse(itemLink),
                                //       mode: LaunchMode.externalApplication);
                                  if (await canLaunchUrl(Uri.parse(itemLink))) {
                                  launchUrl(
                                  Uri.parse(itemLink),
                                  mode: LaunchMode.externalApplication,
                                  );
                                  } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                  backgroundColor: AppColors.lightGreen,
                                  content: Text('Could not launch the URL'),
                                  ),
                                  );
                                  }
                                 },
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.lightGreen,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 80,
                                      right: 80
                                  ),
                                  child: Text('Go $itemBrand',style: GoogleFonts.playfairDisplay(
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
