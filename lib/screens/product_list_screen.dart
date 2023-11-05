import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';
import 'package:shop_/widgets/product_item.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorApp.backgroundScreenColor,
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
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
                      child: SizedBox(
                          height: 22,
                          width: 26,
                          child: Image.asset("assets/images/icon_ne.png")),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Expanded(
                      child: Text(
                        "پر فروش ترین ها",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "SB",
                            fontSize: 16,
                            color: ColorApp.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: SizedBox(
                          width: 26,
                          height: 26,
                          child: Image.asset("assets/images/icon_back.png")),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return const ProductItem();
                }),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                )),
          )
        ],
      )),
    );
  }
}
