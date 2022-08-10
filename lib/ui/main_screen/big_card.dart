import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';

import 'package:organic_market/data/offer.dart';

class BigCard extends StatelessWidget {
  const BigCard({Key? key, required this.color, required this.offer})
      : super(key: key);

  final Color color;
  final Offer offer;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 0.9.sw,
      height: 0.3.sh,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: ClipPath(
              clipper: _CustomClipper(),
              child: SizedBox(
                width: 0.45.sw,
                height: 0.225.sh,
                child: Image.asset(
                  offer.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 0.6.sw,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(offer.title, style: AppStyles.bigHeader),
                  SizedBox(
                    height: 0.01.sh,
                  ),
                  Text(offer.description, style: AppStyles.body1),
                  SizedBox(
                    height: 0.06.sh,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      textStyle: AppStyles.header3,
                      backgroundColor: AppColors.green149202_1,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text("Узнать больше"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double w = size.width;
    final double h = size.height;

    return Path()
      ..moveTo(w * 0.125, h)
      ..quadraticBezierTo(-0.1 * h, 0.5 * h, 0.24 * w, 0.24 * h)
      ..quadraticBezierTo(0.6 * w, -0.01 * w, w * 0.9, h * 0.125)
      ..quadraticBezierTo(w * 0.95, 0.15 * h, w, 0.25 * h)
      ..lineTo(w, h)
      ..lineTo(0, h);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
