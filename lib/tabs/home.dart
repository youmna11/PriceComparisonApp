import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_assets/app_assets.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';


class HomeTab extends StatelessWidget {
  HomeTab({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 15,left: 15),
              child: TextField(
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    suffixIcon: Icon(Icons.search,color: Colors.white),
                    labelText: "Search",
                    contentPadding: EdgeInsets.all(12),

                    labelStyle: TextStyle(
                        color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                    ),
                    filled: true,
                    fillColor: AppColors.lightGreen
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              child: ListView.builder(
                itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,count){
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.white
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(AppAssets.amazon,
                          fit: BoxFit.cover,),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 25,),
            Container(
              width: double.infinity,
              height: 641,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35)
                ),
                color:AppColors.blue
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Featured Product",
                        style: TextStyle(
                          fontSize: 20
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 270,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,count){
                              return Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap:(){},
                                      child: Container(
                                        height: 270,
                                        width: 143,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 143,
                                          child:ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(AppAssets.product,
                                              fit: BoxFit.cover,),
                                          ),
                                          ),
                                        Text('T-Shirt',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        Text('300.00 EGP',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200
                                        ),),
                                        Text('from Amazon',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                        ),)
                                      ],
                                    ),
                                  )

                                ],
                              );
                            }),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Most Popular",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 270,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,count){
                              return Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap:(){},
                                      child: Container(
                                        height: 270,
                                        width: 143,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 143,
                                          child:ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(AppAssets.product,
                                              fit: BoxFit.cover,),
                                          ),
                                        ),
                                        Text('T-Shirt',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        Text('300.00 EGP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200
                                          ),),
                                        Text('from Amazon',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),)
                                      ],
                                    ),
                                  )

                                ],
                              );
                            }),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Featured Product",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 270,
                        child: ListView.builder(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,count){
                              return Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap:(){},
                                      child: Container(
                                        height: 270,
                                        width: 143,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 143,
                                          child:ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(AppAssets.product,
                                              fit: BoxFit.cover,),
                                          ),
                                        ),
                                        Text('T-Shirt',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold
                                          ),),
                                        Text('300.00 EGP',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200
                                          ),),
                                        Text('from Amazon',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold
                                          ),)
                                      ],
                                    ),
                                  )

                                ],
                              );
                            }),
                      ),
                      SizedBox(height: 100,)


                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
