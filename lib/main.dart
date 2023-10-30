import 'package:flutter/material.dart';
import 'package:shop_/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ColorApp.backgroundScreenColor,
        body: SafeArea(
            child: Center(
          child: Container(
            height: 216,
            width: 160,
            decoration: BoxDecoration(
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
                          child: Image.asset(
                              "assets/images/active_fav_product.png")),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 2),
                          child: Text(
                            "%3",
                            style: TextStyle(
                                fontFamily: "SB",
                                fontSize: 12,
                                color: Colors.white),
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
                    const Text(
                      "آيفون 13 پرو مكس",
                      style: TextStyle(fontFamily: "SM", fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
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
                          Text(
                            "تومان",
                            style: TextStyle(
                                fontFamily: "SM",
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
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
                          Spacer(),
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
          ),
        )),
      ),
    );
  }
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
class CategoryHorizontalItemLIst extends StatelessWidget {
  const CategoryHorizontalItemLIst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(
          "همه",
          style: TextStyle(fontFamily: 'SB', fontSize: 12),
        )
      ],
    );
  }
}
