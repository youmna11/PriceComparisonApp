import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/models/category_model.dart';
import 'package:price_comparison_app/screens/category_item.dart';
import 'package:url_launcher/url_launcher.dart';


class CategoryTab extends StatefulWidget {
  CategoryTab({Key? key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  var categories = Genres.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Online Stores',
            style: GoogleFonts.playfairDisplay(
                color: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.only(
          top: 23
        ),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                const link= "https://www.amazon.eg/";
                launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.externalApplication);
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Image.asset("assets/images/amazon logo.png"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.black26,)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text("Average Rate : 4.0",
                    style: TextStyle(
                      fontSize: 16
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                const link= "https://www.zara.com/";
                launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.externalApplication
                );
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Image.asset("assets/images/zara logo.png"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.black26,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.black26,)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text("Average Rate : 3.0",
                      style: TextStyle(
                          fontSize: 16
                      ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            InkWell(
              onTap: (){
                const link= "https://ar.shein.com/";
                launchUrl(
                    Uri.parse(link),
                    mode: LaunchMode.externalApplication
                );
              },
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Image.asset("assets/images/shein logo.png"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.yellow,),
                        SizedBox(width: 20,),
                        Icon(Icons.star_rate_sharp,color: Colors.black26,)
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text("Average Rate : 4.0",
                      style: TextStyle(
                          fontSize: 16
                      ),),
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
