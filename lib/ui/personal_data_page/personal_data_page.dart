import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:organic_market/bloc/profile_page_cubit.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';

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
      TextEditingController(text: '+7 123 456 78 90');

  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _birthdayController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Личные данные',
        isBack: true,
        onReturn: (){BlocProvider.of<ProfilePageCubit>(context).showProfilePage();},
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
        children: [
          OrganicTextField(
            labelText: 'Имя',
            controller: _nameController,
          ),
          const SizedBox(height: 12),
          OrganicTextField(
            labelText: 'Фамилия',
            controller: _surnameController,
          ),
          const SizedBox(height: 12),
          OrganicTextField(
            labelText: 'Дата рождения',
            suffixIcon: Image.asset('assets/icons/calendar.png'),
            controller: _birthdayController,
          ),
          const SizedBox(height: 12),
          OrganicTextField(
            labelText: 'Телефон',
            controller: _phoneController,
          ),
          const SizedBox(height: 12),
          OrganicTextField(
            labelText: 'E-mail',
            controller: _emailController,
          ),
        ],
      ),
    );
  }
}
