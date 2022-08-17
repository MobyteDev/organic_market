import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_bottom.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';
import 'package:organic_market/utils/formatters/birthday_fomatted.dart';
import 'package:organic_market/utils/formatters/phone_number_formatter.dart';
import 'package:organic_market/utils/formatting.dart';

class PersonalDataPage extends StatefulWidget {
  PersonalDataPage({Key? key}) : super(key: key);

  @override
  State<PersonalDataPage> createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalDataPage> {
  final TextEditingController _nameController =
      TextEditingController(text: 'Сергей');
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _phoneController =
      TextEditingController(text: Formatting.getFormattedNumber('71234567890'));
  final TextEditingController _emailController = TextEditingController();

  void _onTapSave() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Личные данные',
        isBack: true,
      ),
      bottomNavigationBar: OrganicBottom(
        height: 90.h,
        buttonLabel: 'Сохранить',
        buttonHeight: 58.h,
        buttonWidth: 343.w,
        onTap: _onTapSave,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 32.h, left: 16.w, right: 16.w),
        children: [
          OrganicTextField(
            labelText: 'Имя',
            controller: _nameController,
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'Фамилия',
            controller: _surnameController,
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'Дата рождения',
            suffixIcon: Image.asset('assets/icons/calendar.png'),
            controller: _birthdayController,
            keyboardType: TextInputType.datetime,
            inputFormatters: [
              BirthdayFormatter(),
            ],
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'Телефон',
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            inputFormatters: [
              PhoneNumberFormatter(),
            ],
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'E-mail',
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
          ),
        ],
      ),
    );
  }
}
