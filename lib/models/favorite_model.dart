class FavModel{
  String id;
  String name;
  double price;
  String description;
  String brand;
  String image;
  String url;

  FavModel({this.id="", required this.name, required this.price,required this.description,required this.brand,required this.image, required this.url});

  FavModel.fromJson(Map<String, dynamic>json):this(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      brand: json['brand'],
    image: json['image'],
    url: json['url'],
  );

  Map<String, dynamic> toJson(){
    return {
      "id":id,
      "name":name,
      "description":description,
      "price":price,
      "brand":brand,
      "image" : image,
      "url" : url,
    };
  }

}