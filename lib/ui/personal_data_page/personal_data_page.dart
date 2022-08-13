import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';
import 'package:organic_market/ui/personal_data_page/widgets/personal_data_bottom_bar.dart';

class PersonalDataPage extends StatelessWidget {
  final TextEditingController _nameController =
      TextEditingController(text: 'Сергей');
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _phoneController =
      TextEditingController(text: '+7 123 456 78 90');
  final TextEditingController _emailController = TextEditingController();

  PersonalDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Личные данные',
        isBack: true,
      ),
      bottomNavigationBar: PersonalDataBottomBar(buttonLabel: 'Сохранить'),
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
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'Телефон',
            controller: _phoneController,
          ),
          SizedBox(height: 12.h),
          OrganicTextField(
            labelText: 'E-mail',
            controller: _emailController,
          ),
        ],
      ),
    );
  }
}
