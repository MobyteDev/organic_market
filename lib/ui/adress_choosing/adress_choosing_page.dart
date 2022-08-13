import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';
import 'package:organic_market/ui/common_widgets/switcher.dart';

class AdressChoosingPage extends StatelessWidget {
  AdressChoosingPage({super.key});

  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _flatController = TextEditingController();
  final TextEditingController _entranceController = TextEditingController();
  final TextEditingController _floorController = TextEditingController();
  final TextEditingController _additionalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DraggableScrollableSheet(
            builder: (context, controller) {
              return Padding(
                padding: EdgeInsets.all(
                  16.w,
                ),
                child: Column(
                  children: [
                    Switcher(
                      values: [
                        "Доставка",
                        "Самовывоз",
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    OrganicTextField(
                      labelText: "г. Москва, ул. Маршала Бирюзова, д. 19",
                      controller: _addressController,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OrganicTextField(
                          labelText: "Квартира",
                          controller: _flatController,
                        ),
                        OrganicTextField(
                          labelText: "Подъезд",
                          controller: _addressController,
                        ),
                        OrganicTextField(
                          labelText: "Этаж",
                          controller: _addressController,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    OrganicTextField(
                      labelText: "Дополнительная информация",
                      controller: _addressController,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
