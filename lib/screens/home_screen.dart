import 'package:flutter/material.dart';
import 'package:price_comparison_app/app_colors/app_color.dart';
import 'package:price_comparison_app/tabs/camera.dart';
import 'package:price_comparison_app/tabs/category.dart';
import 'package:price_comparison_app/tabs/favorite.dart';
import 'package:price_comparison_app/tabs/home.dart';
import 'package:price_comparison_app/tabs/profile.dart';



class HomeScreen extends StatefulWidget {
  static const String routeName = "home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> tabs = [
    HomeTab(),
    CameraTab(),
    CategoryTab(),
    FavoriteTab(),
    ProfileTab()
  ];


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Scaffold(
          extendBody: true,
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30)
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.white,
              selectedItemColor: AppColors.lightGreen,
              unselectedItemColor: Colors.black12,
              showSelectedLabels: false,
              showUnselectedLabels: false,

              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage("assets/images/home.png"),size: 27,),
                    label: '',
                    backgroundColor: AppColors.white),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage("assets/images/camera.png"),size: 27,),
                    label: '',
                    backgroundColor: AppColors.white),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage("assets/images/category.png"),size: 27,),
                    label: '',
                    backgroundColor: AppColors.white),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage("assets/images/favorite.png"),size: 27,),
                    label: '',
                    backgroundColor: AppColors.white),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage("assets/images/profile.png"),size: 27,),
                    label: '',
                    backgroundColor: AppColors.white),
              ],
            ),
          ),
          body: tabs[index],
        ),
      ],
    );
  }
}
