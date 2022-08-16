import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/address_settings.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/order_making_page/widgets/addresses_list.dart';
import 'package:organic_market/ui/order_making_page/widgets/order_making_bottom_bar.dart';
import 'package:organic_market/ui/order_making_page/widgets/custom_switch.dart';
import 'package:organic_market/ui/common_widgets/organic_text_field.dart';
import 'package:organic_market/ui/order_making_page/widgets/order_making_list_tile.dart';
import 'package:organic_market/ui/order_making_page/widgets/price_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderMakingPage extends StatefulWidget {
  OrderMakingPage({Key? key}) : super(key: key);

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
  final int? _sale = 10;
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

  void _onTapDate() {}

  void _onTapPaymentMethod() {}

  void _onTapMakeOrder() {
    context.router.pushNamed('/orderSuccess');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OrganicAppBar(
        title: 'Оформление заказа',
        isBack: true,
      ),
      bottomNavigationBar: OrderMakingBottomBar(
        buttonLabel: 'Оформить заказ',
        onTapButton: _onTapMakeOrder,
        label: 'Нажимая "Оформить заказ", вы принимаете условия',
        textButtonLabel: 'Публичной оферты',
      ),
      body: ListView(
        padding:
            EdgeInsets.only(top: 22.5.h, left: 16.h, right: 16.h, bottom: 16),
        children: [
          OrderMakingListTile(
            onTap: _onTapAddresses,
            title: 'Адрес доставки',
            subtitle: _address,
          ),
          SizedBox(height: 12.h),
          OrderMakingListTile(
            onTap: _onTapDate,
            title: 'Дата и время доставки',
            subtitle: '$_date в $_time',
          ),
          SizedBox(height: 12.h),
          OrderMakingListTile(
            onTap: _onTapPaymentMethod,
            title: 'Способ оплаты',
            subtitle: _paymentMethod,
          ),
          SizedBox(height: 12.5.h),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'Списать баллы',
                      style: AppStyles.body3,
                    ),
                    SizedBox(width: 7.w),
                    Image.asset('assets/icons/help.png')
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
          SizedBox(height: 12.5.h),
          OrganicTextField(
            labelText: 'Комментарий',
            controller: _controller,
            isFloatingLabel: false,
          ),
          SizedBox(height: 16.h),
          PriceRow(
            title: '$_goodsNumber товара',
            titleColor: AppColors.grey142144150_1,
            value: '$_price ₽',
          ),
          SizedBox(height: 4.h),
          (_sale == null || _sale == 0)
              ? Container()
              : PriceRow(
                  title: 'Скидка $_sale%',
                  titleColor: AppColors.pink5589_1,
                  value: '-$_salePrice ₽',
                  valueColor: AppColors.pink5589_1,
                ),
          SizedBox(height: 4.h),
          PriceRow(
            title: 'Доставка',
            titleColor: AppColors.grey142144150_1,
            value: '$_deliveryPrice ₽',
          ),
          SizedBox(height: 16.h),
          PriceRow(
            title: 'Итого',
            titleSize: 24,
            titleWeight: FontWeight.w600,
            value: '$_finalPrice ₽',
            valueSize: 24,
            valueWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
