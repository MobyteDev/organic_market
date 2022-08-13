import 'package:flutter/material.dart';
import 'package:organic_market/common/app_styles.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const ProfileListTile({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppStyles.body3),
            Image.asset('assets/icons/forward.png'),
          ],
        ),
      ),
    );
  }
}
