import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';

class ProfileDetailScreen extends StatelessWidget {
  const ProfileDetailScreen({super.key});

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
                    left: 44, right: 44, bottom: 20, top: 15),
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
                            child: Image.asset(
                                "assets/images/icon_apple_blue.png")),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Expanded(
                        child: Text(
                          "آیفون",
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
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "2022 se آیفون ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "SB", fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 44),
                child: Container(
                  height: 284,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.transparent.withOpacity(0.3),
                          offset: Offset(0, 0),
                          blurRadius: 20,
                          spreadRadius: 3)
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 16),
                            child: Image.asset("assets/images/icon_star.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 16),
                            child: Text(
                              "4.6 ",
                              style: TextStyle(fontSize: 12, fontFamily: "SM"),
                            ),
                          ),
                          Spacer(),
                          SizedBox(
                              height: double.infinity,
                              child: Image.asset("assets/images/iphone.png")),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15, top: 15),
                            child: Image.asset(
                                "assets/images/icon_favorite_deactive.png"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 44,
                          right: 44,
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorApp.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child:
                                      Image.asset("assets/images/iphone.png"),
                                ),
                              ),
                            );
                          },
                          itemCount: 3,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          "انتخاب رنگ",
                          style: TextStyle(fontFamily: "SM", fontSize: 12),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 26,
                            width: 26,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              height: 26,
                              width: 26,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 26,
                              width: 26,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "انتخاب حافظه داخلی",
                        style: TextStyle(fontFamily: "SM", fontSize: 12),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                height: 26,
                                width: 74,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorApp.grey,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "512",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "SM"),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                height: 26,
                                width: 74,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorApp.grey,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "256",
                                    style: TextStyle(
                                      fontFamily: "SM",
                                      fontSize: 12,
                                    ),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                                height: 26,
                                width: 74,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: ColorApp.grey,
                                  ),
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "128",
                                    style: TextStyle(
                                        fontSize: 12, fontFamily: "SM"),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 44, right: 44, top: 20),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 1,
                        color: ColorApp.grey,
                      ),
                    ),
                    width: 340,
                    height: 46,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/icon_left_categroy.png")),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "مشاهده",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "SM",
                                  color: ColorApp.blue),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text(
                              "مشخصات فنی",
                              style: TextStyle(fontSize: 12, fontFamily: "SM"),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 1,
                        color: ColorApp.grey,
                      ),
                    ),
                    width: 340,
                    height: 46,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/icon_left_categroy.png")),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "مشاهده",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "SM",
                                  color: ColorApp.blue),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text(
                              "توضیحات محصول",
                              style: TextStyle(fontSize: 12, fontFamily: "SM"),
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(
                        width: 1,
                        color: ColorApp.grey,
                      ),
                    ),
                    width: 340,
                    height: 46,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    "assets/images/icon_left_categroy.png")),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "مشاهده",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "SM",
                                  color: ColorApp.blue),
                            ),
                          ),
                          Spacer(),
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                height: 26,
                                width: 26,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 20,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 30,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 40,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 50,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: const BoxDecoration(
                                    color: ColorApp.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "+10",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: "SB",
                                        color: Colors.white),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                            ),
                            child: Text(
                              "نظرات کاربران",
                              style: TextStyle(fontSize: 12, fontFamily: "SM"),
                            ),
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                PriceTagButton(),
                SizedBox(
                  width: 20,
                ),
                AddToBasketButton(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class AddToBasketButton extends StatelessWidget {
  const AddToBasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 32),
      child: SizedBox(
        width: 160,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                color: ColorApp.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 53,
                    width: 150,
                    child: Center(
                      child: Text(
                        "افزودن به سبد خرید",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "SB",
                          fontSize: 15,
                        ),
                      ),
                    ),
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

class PriceTagButton extends StatelessWidget {
  const PriceTagButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 32),
      child: SizedBox(
        width: 160,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                color: ColorApp.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
            Positioned(
              bottom: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 53,
                    width: 150,
                    child: Center(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Text(
                            "تومان",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "SM",
                                color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "17,800,000",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: "SM",
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "16,989,000",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "SB",
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Container(
                            width: 25,
                            height: 15,
                            decoration: BoxDecoration(
                              color: Color(0xffD02026),
                              borderRadius: BorderRadius.all(
                                Radius.circular(7.5),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "%5",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: "SB"),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
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
