import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/models/category_model.dart';
import 'package:price_comparison_app/screens/category_item.dart';


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
          child: Text('Categories',
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
          left: 15,
          right: 15,
          top: 23
        ),
        child: Container(
          height: 647,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.white
          ),
          child: GridView.builder(
            padding: EdgeInsets.all(10),
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: (){},
                    child: CategoryItem(categories[index],index));
              }),

        ),
      ),
    );
  }
}
