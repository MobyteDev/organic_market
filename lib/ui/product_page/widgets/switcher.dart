import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Switcher extends StatefulWidget {
  final List<String> values;
  final List<String>? discountsValues;
  const Switcher({
    Key? key,
    required this.values,
    this.discountsValues,
  }) : super(key: key);

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(
      milliseconds: 40,
    ),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool isFirstActive = true;
  @override
  Widget build(BuildContext context) {
    bool isForPrices = widget.discountsValues != null;
    List<String> discounts = isForPrices ? widget.discountsValues! : [" ", " "];

    return Container(
      height: 43.h,
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 32),
      decoration: BoxDecoration(
        color: AppColors.grey242243240_1,
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      child: Stack(
        children: [
          SlideTransition(
            position: _offsetAnimation,
            child: Container(
              height: 35.h,
              width: 157.w,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(
                  50,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: AppColors.grey7994115_015,
                    offset: Offset(5, 10)
                  ),
                  
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        isFirstActive = true;
                        _controller.reverse();
                      },
                    );
                  },
                  child: RichText(
                    text: TextSpan(
                      text: widget.values[0],
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: isFirstActive
                            ? AppColors.black
                            : AppColors.grey142144150_1,
                      ),
                      children: [
                        TextSpan(
                          text: discounts[0] != "" ? ' - ${discounts[0]}%' : "",
                          style: const TextStyle(
                            color: AppColors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isFirstActive = false;
                      _controller.forward();
                    },
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: widget.values[1],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: !isFirstActive
                          ? AppColors.black
                          : AppColors.grey142144150_1,
                    ),
                    children: [
                      TextSpan(
                        text: discounts[1] != "" ? ' - ${discounts[1]}%' : "",
                        style: const TextStyle(
                          color: AppColors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
