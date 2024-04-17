class CategoryModel {
  List<Genres>? genres;
  CategoryModel({this.genres});
}

class Genres {
  String? name;
  String? image;

  Genres(this.name,this.image);

  static List<Genres> getCategories() {
    return [
      Genres("Fashion", "assets/images/fashion.png"),
      Genres("Beauty", "assets/images/beauty.png"),
      Genres("Electronics", "assets/images/electronices.png",),
      Genres("Jewellery", "assets/images/jewelry.png"),
      Genres("Footwear", "assets/images/footwear.png"),
      Genres("Toys", "assets/images/toys.png"),
      Genres("Furniture", "assets/images/furniture.png"),
      Genres("Mobiles", "assets/images/mobiles.png"),

    ];
  }

}