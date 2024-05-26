import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/details_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({Key? key}) : super(key: key);

  @override
  _FavoriteTabState createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  List<dynamic> favoriteItems = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFavoriteItems();
  }

  Future<void> fetchFavoriteItems() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userSignature = prefs.getString('userId') ?? ''; // Provide a default value
      print("this is the user id for this loged in user _____________________ $userSignature");

      DatabaseReference ref = FirebaseDatabase.instance.ref("Favorite").child(userSignature);
      final DatabaseEvent event = await ref.once();
      final DataSnapshot snapshot = event.snapshot;

      if (snapshot.value != null && snapshot.value is Map<dynamic, dynamic>) {
        Map<dynamic, dynamic>? data = snapshot.value as Map<dynamic, dynamic>?;

        if (data != null) {
          favoriteItems.clear();
          data.forEach((key, value) {
            final item = value as Map<dynamic, dynamic>;
            item['id'] = key; // Add the document ID to the order map
            favoriteItems.add(item);
          });
        }
      }

      setState(() {
        isLoading = false;
      });
    } catch (error) {
      print('Error fetching data: $error');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> removeFavoriteItem(String itemId) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userSignature = prefs.getString('userId') ?? '';

      DatabaseReference ref = FirebaseDatabase.instance.ref("Favorite").child(userSignature).child(itemId);
      await ref.remove();

      setState(() {
        favoriteItems.removeWhere((item) => item['id'] == itemId);
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.lightGreen,
            content: Text('Item removed from favorites')),
      );
    } catch (error) {
      print('Error removing item: $error');
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      appBar: AppBar(
        backgroundColor: AppColors.lightGreen,
        toolbarHeight: 72,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Favorite',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 20,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : favoriteItems.isEmpty
          ? Center(
        child: Text(
          'Select a product to add to favorites',
          style: GoogleFonts.playfairDisplay(
            color: AppColors.lightGreen,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      )
          : Padding(
        padding: const EdgeInsets.only(top: 30),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 0,
            childAspectRatio: 0.7,
          ),
          itemCount: favoriteItems.length,
          itemBuilder: (context, index) {
            var item = favoriteItems[index];
            return buildFavoriteItem(item);
          },
        ),
      ),
    );
  }

  Widget buildFavoriteItem(dynamic item) {
    int price = item["price"] ;
    double convertedPrice =  price.toDouble() ;
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(itemName:item["name"] , itemPrice: convertedPrice , itemImage: item["image"], itemBrand: item["brand"], itemDescription: item["description"], itemLink: item["url"]),
          ),
        );
      } ,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Container(
              height: 270,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Column(
              children: [
                InkWell(

                  child: Container(
                    height: 200,
                    width: 160,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(item["image"] ?? "no image",
                        fit: BoxFit.cover,),
                    ),
                  ),
                ),
                Text(
                  item['name'] ,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$${item['price']}',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
                ),
                Text(
                  'from ${item['brand']}',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130,top: 10),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColors.lightMint,
              ),
              child: IconButton(
                  onPressed: (){
                    removeFavoriteItem(item['id']);
                  },
                  icon: Icon(Icons.delete_outline_rounded,color: AppColors.lightGreen,)),
            ),
          )
        ],
      ),
    );
  }
}
