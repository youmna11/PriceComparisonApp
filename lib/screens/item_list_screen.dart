import 'package:flutter/material.dart';
import 'package:price_comparison_app/models/product_model.dart';
import 'package:price_comparison_app/screens/details_screen.dart';

class ItemListScreen extends StatelessWidget {
  final List<Product> productList;

  const ItemListScreen({Key? key, required this.productList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(productList[index].itemImage), // Display product image
            title: Text(productList[index].itemName), // Display product name
            subtitle: Text(productList[index].itemBrand), // Display product brand as subtitle
            onTap: () {
              // Navigate to product details screen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    itemName: productList[index].itemName,
                    itemPrice: productList[index].itemPrice,
                    itemImage: productList[index].itemImage,
                    itemBrand: productList[index].itemBrand,
                    itemDescription: productList[index].itemDescription,
                    itemLink: productList[index].itemLink,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

