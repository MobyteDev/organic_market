import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address_settings.dart';
import 'package:organic_market/ui/order_making_page/widgets/addresses_list.dart';
import 'package:organic_market/ui/order_making_page/widgets/custom_bottom_bar.dart';
import 'package:organic_market/ui/order_making_page/widgets/custom_switch.dart';
import 'package:organic_market/ui/order_making_page/widgets/custom_text_field.dart';
import 'package:organic_market/ui/order_making_page/widgets/order_making_list_tile.dart';
import 'package:organic_market/ui/order_making_page/widgets/price_row.dart';
import 'package:organic_market/ui/order_success_page.dart/order_success_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderMakingPage extends StatefulWidget {
  const OrderMakingPage({Key? key}) : super(key: key);

  @override
  State<OrderMakingPage> createState() => _OrderMakingPageState();
}

class _OrderMakingPageState extends State<OrderMakingPage> {
  final String _address = 'ул. Маршала Бирюзова, д. 19, кв. 189';
  final String _date = '12 октября';
  final String _time = '15:30';
  final String _paymentMethod = 'Банковской картой';
  final int _goodsNumber = 3;
  final int _price = 1850;
  final int _sale = 10;
  final int _salePrice = 150;
  final int _deliveryPrice = 99;
  final int _finalPrice = 1799;

  bool _switchValue = false;

  final TextEditingController _controller = TextEditingController();

  final List<AddressSettings> _addressSettingsList = [
    AddressSettings(
      addressType: 'Доставка',
      address: 'ул. Маршала Бирюзова, д. 19, кв. 189',
      isSelected: true,
    ),
    AddressSettings(
      addressType: 'Самовывоз',
      address: 'Бутырская улица, 84',
    ),
  ];

  void _onTapAddresses() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.transparent,
      builder: (context) {
        return AddressesList(addressSetingsList: _addressSettingsList);
      },
    );
  }

  void _onTapMakeOrder() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const OrderSuccessPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey[200],
        title: const Text(
          'Оформление заказа',
          style: TextStyle(
            fontFamily: 'Jost',
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        buttonLabel: 'Оформить заказ',
        onTapButton: _onTapMakeOrder,
        label: 'Нажимая "Оформить заказ", вы принимаете условия',
        textButtonLabel: 'Публичной оферты',
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          GestureDetector(
            onTap: _onTapAddresses,
            child: OrderMakingListTile(
              title: 'Адрес доставки',
              subtitle: _address,
            ),
          ),
          SizedBox(height: 15),
          OrderMakingListTile(
            title: 'Дата и время доставки',
            subtitle: '$_date в $_time',
          ),
          const SizedBox(height: 15),
          OrderMakingListTile(
            title: 'Способ оплаты',
            subtitle: _paymentMethod,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Text(
                      'Списать баллы',
                      style: AppStyles.body3,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.help,
                      color: AppColors.grey223215215_1,
                      size: 23,
                    ),
                  ],
                ),
              ),
              CustomSwitch(
                value: _switchValue,
                onChanged: (value) {
                  setState(
                    () {
                      _switchValue = value;
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          CustomTextField(
            labelText: 'Комментарий',
            controller: _controller,
          ),
          const SizedBox(height: 10),
          PriceRow(
            title: '$_goodsNumber товара',
            titleColor: AppColors.grey142144150_1,
            value: '$_price ₽',
          ),
          const SizedBox(height: 5),
          PriceRow(
            title: 'Скидка $_sale%',
            titleColor: AppColors.red,
            value: '-$_salePrice ₽',
            valueColor: AppColors.red,
          ),
          const SizedBox(height: 5),
          PriceRow(
            title: 'Доставка',
            titleColor: AppColors.grey142144150_1,
            value: '$_deliveryPrice ₽',
          ),
          const SizedBox(height: 15),
          PriceRow(
            title: 'Итого',
            titleSize: 25,
            titleWeight: FontWeight.bold,
            value: '$_finalPrice ₽',
            valueSize: 26,
            valueWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
