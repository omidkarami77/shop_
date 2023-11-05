import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';
import 'package:shop_/widgets/banner_slider.dart';
import 'package:shop_/widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();

    return Scaffold(
      backgroundColor: ColorApp.backgroundScreenColor,
      body: SafeArea(
        child: Center(
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
                          child:
                              Image.asset("assets/images/icon_apple_blue.png"),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TextField(
                            maxLines: 1,
                            textAlign: TextAlign.end,
                            controller: controller,
                            decoration: const InputDecoration(
                                //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                                hintText: "جستجوی محصولات"
                                //icon at tail of input
                                ),
                            style: const TextStyle(
                                fontFamily: "SB",
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Image.asset("assets/images/icon_search.png"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: BannerSlider(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 32, left: 44, right: 44, bottom: 20),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "دسته بندی",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: ColorApp.grey),
                    ),
                  ]),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return const CategoryHorizontalItemLIst();
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 44, right: 44, bottom: 20),
                  child: Row(children: [
                    Image.asset("assets/images/icon_left_categroy.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "مشاده همه ",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: ColorApp.blue),
                    ),
                    const Spacer(),
                    const Text(
                      "پر فروش ترین ها",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: ColorApp.grey),
                    ),
                  ]),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ProductItem(),
                          );
                        }),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 44, right: 44, bottom: 20, top: 32),
                  child: Row(children: [
                    Image.asset("assets/images/icon_left_categroy.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "مشاده همه ",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: ColorApp.blue),
                    ),
                    const Spacer(),
                    const Text(
                      "پر بازدید ترین ها",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: ColorApp.grey),
                    ),
                  ]),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ProductItem(),
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryHorizontalItemLIst extends StatelessWidget {
  const CategoryHorizontalItemLIst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: ShapeDecoration(
                  color: Colors.amber,
                  shadows: const [
                    BoxShadow(
                        color: Colors.amber,
                        blurRadius: 25,
                        spreadRadius: -15,
                        offset: Offset(0.0, 16)),
                  ],
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              const Icon(
                Icons.mouse,
                size: 32,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "همه",
            style: TextStyle(fontFamily: 'SB', fontSize: 12),
          )
        ],
      ),
    );
  }
}
