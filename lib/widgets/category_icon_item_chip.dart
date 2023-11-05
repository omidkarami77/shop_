import 'package:flutter/material.dart';

class CategoryItemChip extends StatelessWidget {
  const CategoryItemChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
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
