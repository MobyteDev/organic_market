import 'package:flutter/material.dart';
import 'package:organic_market/common/app_styles.dart';

class Brands extends StatelessWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Бренды",
              style: AppStyles.bigHeader,
            ),
          ),
        ),
        GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(
            6,
            (i) => Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset("assets/images/brand${i + 1}.png"),
            ),
          ),
        )
      ],
    );
  }
}
