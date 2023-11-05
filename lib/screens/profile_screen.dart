import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';
import 'package:shop_/widgets/category_icon_item_chip.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 44, right: 44, bottom: 32, top: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                height: 46,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset("assets/images/icon_apple_blue.png"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: Text(
                        "حساب کاربری",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SB",
                            fontSize: 16,
                            color: ColorApp.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 110, right: 110),
              child: Text(
                "محمد جواد هاشمی",
                style: TextStyle(fontSize: 16, fontFamily: "SB"),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 110, right: 110, bottom: 40, top: 10),
              child: Text(
                "09123393795",
                style: TextStyle(
                    fontSize: 10, fontFamily: "SM", color: ColorApp.grey),
              ),
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                ],
              ),
            ),
            Spacer(),
            const Text(
              "اپل شاپ",
              style: TextStyle(
                fontSize: 10,
                fontFamily: "SB",
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "v-1.0",
              style: TextStyle(
                fontSize: 10,
                fontFamily: "SB",
                color: Colors.grey,
              ),
            ),
            const Text(
              "Instagram.com/omiiid_karami",
              style: TextStyle(
                fontSize: 10,
                fontFamily: "SB",
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
