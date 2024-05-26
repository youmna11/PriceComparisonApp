import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/screens/details_screen.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();
  FocusNode _focusNode = FocusNode();
  List<dynamic> _searchResults = [];
  List<dynamic> _filteredResults = [];
  bool _isLoading = false;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _performSearch(''); // Load all products when the screen is initialized
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 15, left: 15),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              focusNode: _focusNode,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: AppColors.lightGreen),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.lightGreen),
                  borderRadius: BorderRadius.circular(50),
                ),
                suffixIcon: Icon(Icons.search, color: AppColors.lightGreen),
                labelText: "Search",
                contentPadding: EdgeInsets.all(12),
                labelStyle: GoogleFonts.playfairDisplay(
                  color: AppColors.lightGreen,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (query) {
                _filterResults(query.trim());
              },
            ),
            if (_isLoading)
              CircularProgressIndicator()
            else if (_errorMessage.isNotEmpty)
              Text(_errorMessage)
            else if (_filteredResults.isEmpty)
                Text('No results found.')
              else
                Expanded(
                  child: GridView.builder(
                    itemCount: _filteredResults.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      String itemPriceString = _filteredResults[index]['price'] ?? '0.0';
                      double itemPrice = double.tryParse(itemPriceString) ?? 0.0;
                      String itemBrand = _filteredResults[index]['brand'] ?? 'No brand available';
                      String itemImage = _filteredResults[index]['image_url'] ?? '';

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
                                    itemName: _filteredResults[index]['name'] ?? 'No name available',
                                    itemPrice: itemPrice,
                                    itemImage: _filteredResults[index]['image_url'] ?? 'assets/images/placeholder.jpg',
                                    itemBrand: _filteredResults[index]['brand'] ?? 'No brand available',
                                    itemDescription: _filteredResults[index]['description'] ?? 'No description available',
                                    itemLink: _filteredResults[index]['url'] ?? '',
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
                                _filteredResults[index]['name'] ?? 'No name available',
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

  void _filterResults(String query) {
    if (query.isEmpty) {
      setState(() {
        _filteredResults = _searchResults;
      });
    } else {
      setState(() {
        _filteredResults = _searchResults.where((item) {
          final name = item['name']?.toLowerCase() ?? '';
          return name.contains(query.toLowerCase());
        }).toList();
      });
    }
  }

  void _performSearch(String query) async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      var dio = Dio();
      final response = await dio.get(
        'https://8f1e-102-191-6-105.ngrok-free.app/api/products/',
        queryParameters: {'search': query},
      );

      if (response.statusCode == 200) {
        setState(() {
          _searchResults = response.data ?? [];
          _filteredResults = _searchResults;
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
