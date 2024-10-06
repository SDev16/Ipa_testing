import 'package:flutter/material.dart';
import 'package:meal_magik/components/my_current_location.dart';
import 'package:meal_magik/components/my_description_box.dart';
import 'package:meal_magik/components/my_drawer.dart';
import 'package:meal_magik/components/my_food_tile.dart';
import 'package:meal_magik/components/my_silver_app_bar.dart';
import 'package:meal_magik/components/my_tab_bar.dart';
import 'package:meal_magik/models/food.dart';
import 'package:meal_magik/models/resturant.dart';
import 'package:meal_magik/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
////////////! tabbar controller
  ///
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

//////////////////////////////////////////////////////! LIst of Items
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

//////////////////////////////////////////////////////! return list of food
  ///
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      ///! catergory menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final food = categoryMenu[index];

            ///! return food tile ui
            return FoodTile(food: food, onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => FoodPage(food: food)),
            ));
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
            MySilverAppBar(
                title: MyTabBar(tabController: _tabController,
                ),
                
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ),

                    ////////////////////////////! My current location
                   MyCurrentLocation(),

                    ///
                    ////////////////////////////! discription box
                    const MyDescriptionBox()
                  ],
                )
                ),
          ],
          body: Consumer<Resturant>(
              builder: (context, resturant, child) => TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(resturant.menu))),
        ));
  }
}
