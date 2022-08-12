import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/common/app_colors.dart';

class Carousel extends StatefulWidget {
  final List<String> pics;
  Carousel({
    super.key,
    required this.pics,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();
  int tempPicIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: widget.pics.length,
          itemBuilder: (context, index, pageViewIndex) {
            return Container(
              child: Image.asset(
                widget.pics[index],
                fit: BoxFit.fill,
                height: 250.h,
                width: MediaQuery.of(context).size.width,
              ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(
                () {
                  tempPicIndex = index;
                },
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 11.h,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index < widget.pics.length; index++)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Container(
                      height: 5.h,
                      width: tempPicIndex == index ? 30.w : 5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          39,
                        ),
                        color: AppColors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
