import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/address.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_bottom.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';

class AddressPage extends StatefulWidget {
  AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final Address _address = Address(
    address: 'ул. Маршала Бирюзова, д. 19',
    name: 'Дом',
    type: 'Доставка',
  );

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _flatController = TextEditingController();
  final TextEditingController _entranceController = TextEditingController();
  final TextEditingController _floorController = TextEditingController();
  final TextEditingController _additionallyController = TextEditingController();

  void _onTapSave() {}

  @override
  void initState() {
    _nameController.text = _address.name ?? '';
    _addressController.text = _address.address;
    _flatController.text = _address.flat ?? '';
    _entranceController.text = _address.entrance ?? '';
    _floorController.text = _address.floor ?? '';
    _additionallyController.text = _address.additionally ?? '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double littleTextFieldWidth =
        (MediaQuery.of(context).size.width - 2 * 16.w - 2 * 12.w) / 3;
    return Scaffold(
      appBar: OrganicAppBar(title: 'Адрес', isBack: true),
      bottomNavigationBar: OrganicBottom(
        buttonLabel: 'Сохранить адрес',
        buttonHeight: 58.h,
        buttonWidth: 343.w,
        height: 90.h,
        onTap: _onTapSave,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
        children: [
          OrganicTextField(labelText: 'Название', controller: _nameController),
          SizedBox(height: 12.h),
          OrganicTextField(
              labelText: 'Город, улица, дом', controller: _addressController),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrganicTextField(
                labelText: 'Квартира',
                controller: _flatController,
                width: littleTextFieldWidth,
              ),
              OrganicTextField(
                labelText: 'Подъезд',
                controller: _entranceController,
                width: littleTextFieldWidth,
              ),
              OrganicTextField(
                labelText: 'Этаж',
                controller: _floorController,
                width: littleTextFieldWidth,
              ),
            ],
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
              labelText: 'Дополнительная информация',
              controller: _additionallyController),
        ],
      ),
    );
  }
}
