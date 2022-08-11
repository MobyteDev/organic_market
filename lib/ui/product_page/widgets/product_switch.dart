import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ProductSwitch extends StatelessWidget {
  final List<String> values;
  const ProductSwitch({
    Key? key,
    required this.values,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool initialPosition = true;
    return Container(
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              // widget.onToggleCallback(index);
              // setState(() {});
            },
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.grey242243240_1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  // widget.values.length,
                  2,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Text(
                      values[index],
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        // fontSize: Get.width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xAA000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment:
                initialPosition ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                initialPosition ? values[0] : values[1],
                style: TextStyle(
                  fontFamily: 'Rubik',
                  // fontSize: Get.width * 0.045,
                  // color: widget.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
        ],
      ),
    );
  }
}
