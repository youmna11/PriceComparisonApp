import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/product_screen.dart';


class FavoriteTab extends StatelessWidget {
  const FavoriteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Favorite',
            style: GoogleFonts.playfairDisplay(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 20
            ),),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30)
            )
        ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GridView.count(
          crossAxisCount: 2,
          primary: false,
          childAspectRatio: 0.7,
          mainAxisSpacing: 5,
          crossAxisSpacing: 0,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Container(
                    height: 270,
                    width: 143,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 40,
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 143,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.product,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '300.00 EGP',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'from Amazon',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Container(
                    height: 270,
                    width: 143,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 143,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.product,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '200.00 EGP',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'from Jumia',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40
                  ),
                  child: Container(
                    height: 270,
                    width: 143,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 143,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.product,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '150.00 EGP',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200,
                            color: Colors.red),
                      ),
                      Text(
                        'from SHEIN',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20
                  ),
                  child: Container(
                    height: 270,
                    width: 143,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 143,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.product,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '400.00 EGP',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'from NOON',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40
                  ),
                  child: Container(
                    height: 270,
                    width: 143,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen()));
                        },
                        child: Container(
                          height: 200,
                          width: 143,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              AppAssets.product,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'T-Shirt',
                        style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '600.00 EGP',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                      ),
                      Text(
                        'from ZARA',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      )
                    ],
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
