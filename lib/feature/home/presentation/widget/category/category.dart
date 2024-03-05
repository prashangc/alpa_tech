import 'package:alpa/core/global/container/container.dart';
import 'package:alpa/feature/home/domain/usecase/home_usecase.dart';
import 'package:alpa/feature/home/presentation/widget/category/category_item_card.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final HomeUseCase homeUseCase;
  const Category({super.key, required this.homeUseCase});

  @override
  Widget build(BuildContext context) {
    return MyContainer(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.3,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: homeUseCase.categoryList.length,
        itemBuilder: (BuildContext ctx, int index) {
          return categoryItem(context, homeUseCase.categoryList[index]);
        },
      ),
    );
  }
}
