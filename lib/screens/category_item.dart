import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/models/category.dart';


class CategoryItem extends StatelessWidget {
  CategoryItem(this.genres,this.index);

  int index;
  Genres genres;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Image.asset('${genres.image}',
              fit: BoxFit.fill,),
            SizedBox(height: 10,),
            Text("${genres.name}",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Colors.black26
            ),),
          ],
        ),
      ),
    );
  }
}
