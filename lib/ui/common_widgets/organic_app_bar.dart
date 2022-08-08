import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:organic_market/common/app_colors.dart';

class OrganicAppBar extends StatelessWidget with PreferredSizeWidget {
  const OrganicAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      
    );
  }
}
