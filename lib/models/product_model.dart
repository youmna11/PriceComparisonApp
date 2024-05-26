class Product {
  final String itemName;
  final double itemPrice;
  final String itemImage;
  final String itemBrand;
  final String itemDescription;
  final String itemLink;

  Product({
    required this.itemName,
    required this.itemPrice,
    required this.itemImage,
    required this.itemBrand,
    required this.itemDescription,
    required this.itemLink,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      itemName: json['name'] ?? 'No name available',
      itemPrice: json['price'] != null ? double.parse(json['price'].toString()) : 0.0,
      itemImage: json['image_url'] ?? 'assets/images/placeholder.jpg',
      itemBrand: json['brand'] ?? 'No brand available',
      itemDescription: json['description'] ?? 'No description available',
      itemLink: json['url'] ?? '',
    );
  }
}