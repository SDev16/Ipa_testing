import 'package:flutter/material.dart';
import 'package:meal_magik/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: TabBar(controller: tabController, tabs: 
        _buildCategoryTabs(),
        labelColor: Theme.of(context).colorScheme.error,
        
      ),
    );
  }
}
