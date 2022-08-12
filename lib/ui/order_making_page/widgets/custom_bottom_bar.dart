import 'package:flutter/material.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/ui/common_widgets/organic_button.dart';
import 'package:organic_market/ui/order_success_page.dart/order_success_page.dart';

class CustomBottomBar extends StatelessWidget {
  final String buttonLabel;
  final void Function() onTapButton;
  final String label;
  final String textButtonLabel;

  const CustomBottomBar({
    Key? key,
    required this.buttonLabel,
    required this.label,
    required this.textButtonLabel,
    required this.onTapButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: Column(
        children: [
          OrganicButton(
            buttonLabel: buttonLabel,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const OrderSuccessPage(),
                ),
              );
            },
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: AppStyles.bodyGrey2,
          ),
          Text(
            textButtonLabel,
            textAlign: TextAlign.center,
            style: AppStyles.bodyGreen2,
          ),
        ],
      ),
    );
  }
}
