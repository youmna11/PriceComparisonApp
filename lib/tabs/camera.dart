import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:price_comparison_app/models/product_model.dart';
import 'package:price_comparison_app/screens/item_list_screen.dart';

class CameraTab extends StatefulWidget {
  const CameraTab({Key? key}) : super(key: key);

  @override
  State<CameraTab> createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  Uint8List? _image;
  File? selectedImage;
  List<String>? _prices;
  bool _isLoading = false;

  List<Product> productList = [];

  Future<void> fetchDataForProduct(String productId) async {
    var url = Uri.parse('https://8f1e-102-191-6-105.ngrok-free.app/api/products/?search=$productId');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Parse the response and store product details
      var productData = jsonDecode(response.body);
      var productDetails = productData['results'];

      for (var item in productDetails) {
        String itemName = item['name'] ?? 'No name available';
        double itemPrice = item['price'] ?? 'No price available';
        String itemImage = item['image_url'] ?? 'assets/images/placeholder.jpg';
        String itemBrand = item['brand'] ?? 'No brand available';
        String itemDescription = item['description'] ?? 'No description available';
        String itemLink = item['url'] ?? '';

        Product product = Product(
          itemName: itemName,
          itemPrice: itemPrice,
          itemImage: itemImage,
          itemBrand: itemBrand,
          itemDescription: itemDescription,
          itemLink: itemLink,
        );

        productList.add(product);
      }
    } else {
      // Handle error
      print('Failed to fetch data for product: $productId');
    }
  }

  void navigateToItemListScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ItemListScreen(productList: productList)),
    );
  }

  _showOption(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Make a choice",
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Gallery"),
                onTap: () => _pickImageFromGallery(),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt_outlined),
                title: Text("Camera"),
                onTap: () => _pickImageFromCamera(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _pickImageFromGallery() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop(); // Close the modal sheet
  }

  Future _pickImageFromCamera() async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future<void> _uploadImage() async {
    if (_image == null) return;
    setState(() {
      _isLoading = true;
    });
    String base64Image = base64Encode(_image!);

    var url = Uri.parse('https://finalfinal-1.onrender.com/predict');
    var response = await http.post(url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "image_data": base64Image,
          "top_n": 5,
        })
    );

    if (response.statusCode == 200) {
      setState(() {
        _prices = List<String>.from(jsonDecode(response.body)['result']);
        _isLoading = false;
      });
      _showIdsDialog(); // Show dialog with fetched IDs
    } else {
      setState(() {
        _isLoading = false;
      });
      // Handle the error
      print('Error: ${response.statusCode}');
    }
  }

  void _showIdsDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          "Image IDs",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            children: _prices!.map((price) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                price,
                style: TextStyle(fontSize: 18),
              ),
            )).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Close"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Camera',
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: constraints.maxHeight * 0.6,
                        width: constraints.maxWidth * 0.9,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.lightGreen),
                            color: Colors.white
                        ),
                        child: _image == null
                            ? Center(child: Text("No image selected"))
                            : Image.memory(
                          _image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: AppColors.lightMint,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 50, right: 50),
                                child: Text(
                                  "Select Picture",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              onPressed: () => _showOption(context),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: AppColors.yellow,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)
                                  )
                              ),
                              child: Text(
                                "Next",
                                style: TextStyle(color: Colors.white , fontSize: 20),
                              ),
                              onPressed: _uploadImage, // Call the upload image function
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_isLoading)
                      Center(
                        child: CircularProgressIndicator(), // Show loading indicator
                      ),
                    Spacer(), // Ensure content stays above the floating action button
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
