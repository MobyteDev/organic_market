import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

import 'package:organic_market/data/offer.dart';
import 'package:organic_market/ui/main_screen/big_card.dart';

class BigCardList extends StatelessWidget {
  const BigCardList({Key? key, required this.offers}) : super(key: key);

  final List<Offer> offers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.3.sh,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => BigCard(
              color: AppColors.cardColors[i % AppColors.cardColors.length],
              offer: offers[i]),
          separatorBuilder: (context, index) => SizedBox(width: 0.02.sw),
          itemCount: offers.length,
          clipBehavior: Clip.none,
        ),
      ),
    );
  }
}
