import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/details_screen.dart';

class HomeTabs extends StatefulWidget {
  final String tabType ;
  HomeTabs({Key? key , required this.tabType}) : super(key: key);


  @override
  State<HomeTabs> createState() => _HomeTabsState(tabType);

}

class _HomeTabsState extends State<HomeTabs> {
  String tabtype;
 // TextEditingController _searchController = TextEditingController();
  List<dynamic> _searchResults = [];
  bool _isLoading = false;
  String _errorMessage = '';

  _HomeTabsState( this.tabtype);

  @override
  void initState() {

    super.initState();

    _performSearchInAPI(tabtype);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(
          children: [
            // TextField(
            //   controller: _searchController,
            //   textInputAction: TextInputAction.done,
            //   decoration: InputDecoration(
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50),
            //       borderSide: BorderSide(color: AppColors.lightGreen),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: AppColors.lightGreen),
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     suffixIcon: Icon(Icons.search, color: AppColors.lightGreen),
            //     labelText: "Search",
            //     contentPadding: EdgeInsets.all(12),
            //     labelStyle: GoogleFonts.playfairDisplay(
            //       color: AppColors.lightGreen,
            //       fontSize: 15,
            //       fontWeight: FontWeight.w300,
            //     ),
            //     filled: true,
            //     fillColor: Colors.white,
            //   ),
            //   onChanged: (query) {
            //     if (query.isEmpty || query == " "){
            //
            //     } else {
            //       _performSearch(query);
            //     }
            //
            //
            //   },
            // ),
            if (_isLoading)
              CircularProgressIndicator()
            else if (_errorMessage.isNotEmpty)
              Text(_errorMessage)
            else
              Expanded(
                child: GridView.builder(
                  itemCount: _searchResults.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    String itemPriceString = _searchResults[index]['price'] ?? '0.0';
                    double itemPrice = double.tryParse(itemPriceString) ?? 0.0;
                    String itemBrand = _searchResults[index]['brand'] ?? 'No brand available';
                    String itemImage =  _searchResults[index]['image_url'] ?? '';


                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: AppColors.lightMint,
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(
                                  itemName: _searchResults[index]['name'] ?? 'No name available',
                                  itemPrice: itemPrice,
                                  itemImage: _searchResults[index]['image_url'] ?? 'assets/images/placeholder.jpg',
                                  itemBrand: _searchResults[index]['brand'] ?? 'No brand available',
                                  itemDescription: _searchResults[index]['description'] ?? 'No description available',
                                  itemLink: _searchResults[index]['url'] ?? '',
                                )));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: itemImage.isNotEmpty
                                    ? Image.network(
                                  itemImage,
                                  height: 140,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                )
                                    : Container(
                                  height: 140,
                                  width: double.infinity,
                                  color: Colors.grey[200],
                                  child: Icon(
                                    Icons.image,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              _searchResults[index]['name'] ?? 'No name available',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4),
                            Text(
                              '\$${itemPrice}',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.green,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'from $itemBrand',
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _performSearchInAPI(String query) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      var dio = Dio();
      final response = await dio.get(
        'https://grackle-notable-hardly.ngrok-free.app/api/products/',

        queryParameters: {'search': query},
      );

      if (response.statusCode == 200) {
        setState(() {
          _searchResults = response.data ?? [];
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Failed to load search results. Status code: ${response.statusCode}';
          _isLoading = false;
        });
      }
    } catch (e) {
      if (e is DioError) {
        setState(() {
          _errorMessage = 'Error: ${e.message}';
          if (e.response != null) {
            _errorMessage += '\nResponse data: ${e.response?.data}';
          }
          _isLoading = false;
        });
      } else {
        setState(() {
          _errorMessage = 'Unexpected error: ${e.toString()}';
          _isLoading = false;
        });
      }
    }
  }
}
