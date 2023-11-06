import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';
import 'package:shop_/screens/category_screen.dart';
import 'package:shop_/screens/home_screen.dart';
import 'package:shop_/screens/product_list_screen.dart';
import 'package:shop_/screens/profile_detail_screen.dart';
import 'package:shop_/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedBottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 50,
              sigmaY: 50,
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  selectedBottomNavigationIndex = index;
                });
              },
              selectedLabelStyle: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: ColorApp.blue,
              ),
              unselectedLabelStyle: const TextStyle(
                fontFamily: 'sb',
                fontSize: 10,
                color: Colors.black,
              ),
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedBottomNavigationIndex,
              elevation: 0,
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset("assets/images/icon_profile.png"),
                    label: 'حساب کاربری',
                    activeIcon: Container(
                      child:
                          Image.asset("assets/images/icon_profile_active.png"),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: ColorApp.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 13)),
                      ]),
                    )),
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      child:
                          Image.asset("assets/images/icon_basket_active.png"),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: ColorApp.blue,
                            blurRadius: 20,
                            spreadRadius: -7,
                            offset: Offset(0.0, 13)),
                      ]),
                    ),
                  ),
                  label: 'سبد خرید',
                  icon: Image.asset("assets/images/icon_basket.png"),
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child:
                        Image.asset("assets/images/icon_category_active.png"),
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: ColorApp.blue,
                          blurRadius: 20,
                          spreadRadius: -7,
                          offset: Offset(0.0, 13)),
                    ]),
                  ),
                  label: 'دسته بندی',
                  icon: Image.asset("assets/images/icon_category.png"),
                ),
                BottomNavigationBarItem(
                  activeIcon: Container(
                    child: Image.asset("assets/images/icon_home_active.png"),
                    decoration: const BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: ColorApp.blue,
                          blurRadius: 20,
                          spreadRadius: -7,
                          offset: Offset(0.0, 13)),
                    ]),
                  ),
                  label: 'خانه',
                  icon: Image.asset("assets/images/icon_home.png"),
                ),
              ],
            ),
          ),
        ),
        body: const ProfileDetailScreen(),
        // body: IndexedStack(
        //   index: selectedBottomNavigationIndex,
        //   children: getScreen(),
        // ),
      ),
    );
  }
}

List<Widget> getScreen() {
  return <Widget>[
    ProfileScreen(),
    ProductListScreen(),
    CategoryScreen(),
    HomeScreen(),
  ];
}

//  Padding(
//             padding: EdgeInsets.symmetric(horizontal: 44),
//             child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 22,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(left: 20),
//                     child: CategoryHorizontalItemLIst(),
//                   );
//                 }),
//           ),
