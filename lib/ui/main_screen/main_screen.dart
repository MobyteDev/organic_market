import 'package:flutter/material.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';

import '../../common/app_colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "a",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 20,
          // ),
        ],
      ),
    );
  }
}
