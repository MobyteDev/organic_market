import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:organic_market/ui/common_widgets/organic_navigation_bar.dart';
import 'package:organic_market/utils/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AutoTabsRouter.tabBar(
        routes: [
          MainPageRoute(),
          CategoriesPageRoute(),
          CategoriesPageRoute(),
          OrderMakingPageRoute(), // Временно!
          ProfilePageRoute(),
        ],
        builder: (context, child, tabController) {
          return Scaffold(
            bottomNavigationBar: OrganicNavigationBar(),
            body: child,
          );
        },
      ),
    );
  }
}
