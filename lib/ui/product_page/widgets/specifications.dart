import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

enum SpecificationsTypes {
  description,
  specifications,
  reviews,
}

class Specifications extends StatefulWidget {
  const Specifications({super.key});

  @override
  State<Specifications> createState() => _SpecificationsState();
}

class _SpecificationsState extends State<Specifications> {
  SpecificationsTypes choosedPoint = SpecificationsTypes.description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    choosedPoint = SpecificationsTypes.description;
                  },
                );
              },
              child: Text(
                "Описание",
                style: TextStyle(
                  color: choosedPoint == SpecificationsTypes.description
                      ? AppColors.black
                      : AppColors.grey223215215_1,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    choosedPoint = SpecificationsTypes.specifications;
                  },
                );
              },
              child: Text(
                "Характеристики",
                style: TextStyle(
                  color: choosedPoint == SpecificationsTypes.specifications
                      ? AppColors.black
                      : AppColors.grey223215215_1,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            GestureDetector(
              onTap: () {
                setState(
                  () {
                    choosedPoint = SpecificationsTypes.reviews;
                  },
                );
              },
              child: Text(
                "Отзывы",
                style: TextStyle(
                  color: choosedPoint == SpecificationsTypes.reviews
                      ? AppColors.black
                      : AppColors.grey223215215_1,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            //TODO: finish when design will be done
          ],
        ),
        SizedBox(
          height: 300,
        ),
      ],
    );
  }
}
