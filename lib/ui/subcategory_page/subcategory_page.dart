import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:organic_market/bloc/subcategory_page_bloc.dart';
import 'package:organic_market/common/app_colors.dart';
import 'package:organic_market/common/app_styles.dart';
import 'package:organic_market/data/product.dart';
import 'package:organic_market/data/products_by_tags.dart';
import 'package:organic_market/data/sort_enum.dart';
import 'package:organic_market/ui/common_widgets/organic_app_bar.dart';
import 'package:organic_market/ui/common_widgets/product_card_grid.dart';

class SubcategoryPage extends StatelessWidget {
  const SubcategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SubcategoryPageBloc()..add(SubcategoryPageLoadStarted()),
      child: Scaffold(
        appBar: OrganicAppBar(),
        body: BlocBuilder<SubcategoryPageBloc, SubcategoryPageState>(
          builder: (context, state) {
            print(state);
            if (state is SubcategoryPageLoaded) {
              final ProductsByTags data = state.data;
              return Padding(
                padding: EdgeInsets.all(16.0.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("${data.count} товаров",
                              style: AppStyles.body1
                                  .copyWith(color: AppColors.grey192192202_1)),
                          Spacer(),
                          DropdownButton(
                            onChanged: (SortEnum? value) {
                              if (value != null) {
                                BlocProvider.of<SubcategoryPageBloc>(context).add(SubcategoryPageSortChanged(sort: value));
                              }
                            },
                            style: AppStyles.body1
                                .copyWith(color: AppColors.black),
                            value: state.sort,
                            icon: Image.asset(
                              "assets/icons/arrow_down.png",
                              height: 12,
                            ),
                            items: SortEnum.values
                                .map((s) => DropdownMenuItem<SortEnum>(
                                      child: Text("${s.text}  "),
                                      value: s,
                                    ))
                                .toList(growable: false),
                          ),
                        ],
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) => ProductCardGrid(
                          sort: SortEnum.date,
                          title: data.tags[i],
                          products: data.lists[i],
                        ),
                        shrinkWrap: true,
                        itemCount: data.tags.length,
                      ),
                    ],
                  ),
                ),
              );
            } else
              return Center(child: Text("a"));
          },
        ),
      ),
    );
  }
}
