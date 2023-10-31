import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      width: 160,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Expanded(child: Container()),
              Image.asset("assets/images/iphone.png"),
              Positioned(
                top: 10,
                right: 10,
                child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset("assets/images/active_fav_product.png")),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    child: Text(
                      "%3",
                      style: TextStyle(
                          fontFamily: "SB", fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 10),
                child: Text(
                  "آيفون 13 پرو مكس",
                  style: TextStyle(fontFamily: "SM", fontSize: 14),
                ),
              ),
              Container(
                height: 53,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: ColorApp.blue,
                        blurRadius: 25,
                        spreadRadius: -12,
                        offset: Offset(0.0, 15))
                  ],
                  color: ColorApp.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(mainAxisSize: MainAxisSize.max, children: [
                    const Text(
                      "تومان",
                      style: TextStyle(
                          fontFamily: "SM", fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "49.800.000",
                          style: TextStyle(
                              fontFamily: "SM",
                              fontSize: 12,
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          "48.800.000",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "SM",
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(
                            "assets/images/icon_right_arrow_cricle.png"))
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
