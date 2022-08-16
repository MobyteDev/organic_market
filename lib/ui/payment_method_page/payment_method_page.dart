import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/data/payment_method.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_bottom.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';
import 'package:organic_market/utils/formatting.dart';

class PaymentMethodPage extends StatefulWidget {
  PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final PaymentMethod _paymentMethod = PaymentMethod(
    name: 'SERGEY PETROV',
    number: '1234567890123456',
    date: '02/30',
    cvv: '123',
  );

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();

  void _onTapSave() {}

  @override
  void initState() {
    _nameController.text = _paymentMethod.name;
    _numberController.text =
        Formatting.getFormattedCardNumber(_paymentMethod.number);
    _dateController.text = _paymentMethod.date;
    _cvvController.text = _paymentMethod.cvv;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double _littleTextFieldWidth =
        (MediaQuery.of(context).size.width - 2 * 16.w - 12.w) / 2;
    return Scaffold(
      appBar: OrganicAppBar(title: 'Способы оплаты', isBack: true),
      bottomNavigationBar: OrganicBottom(
        buttonLabel: 'Сохранить карту',
        buttonHeight: 58.h,
        buttonWidth: 343.w,
        height: 90.h,
        onTap: _onTapSave,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
        children: [
          Column(
            children: [
              OrganicTextField(
                  labelText: 'Имя на карте', controller: _nameController),
              SizedBox(height: 12.h),
              OrganicTextField(
                  labelText: 'Номер', controller: _numberController),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OrganicTextField(
                    labelText: 'Срок дествия',
                    controller: _dateController,
                    width: _littleTextFieldWidth,
                  ),
                  OrganicTextField(
                    labelText: 'CVV',
                    controller: _cvvController,
                    width: _littleTextFieldWidth,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
