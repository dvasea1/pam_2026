import 'package:flutter/material.dart';
import 'package:test_pam/list_items/categories_carousel_list_item.dart';
import 'package:test_pam/list_items/greeting_list_item.dart';
import 'package:test_pam/list_items/header_list_item.dart';
import 'package:test_pam/list_items/list_item.dart';
import 'package:test_pam/list_items/search_list_item.dart';
import 'package:test_pam/list_items/section_list_item.dart';
import 'package:test_pam/models/category.dart';
import 'package:test_pam/resources/app_strings.dart';
import 'package:test_pam/widgets/categories_carousel_widget.dart';
import 'package:test_pam/widgets/greeting_widget.dart';
import 'package:test_pam/widgets/header_list_widget.dart';
import 'package:test_pam/widgets/search_widget.dart';
import 'package:test_pam/widgets/section_list_widget.dart';

class FoodDelveryHomePage extends StatefulWidget {
  const FoodDelveryHomePage({super.key});

  @override
  State<FoodDelveryHomePage> createState() => _FoodDelveryHomePageState();
}

class _FoodDelveryHomePageState extends State<FoodDelveryHomePage> {
  List<ListItem> items = [
    HeaderListItem(locationTitle: 'Halal Lab office', cartCount: 0),
    GreetingListItem(firstName: 'Pam User'),
    SearchListItem(),
    SectionListItem(title: AppStrings.allCategories, rightActionTitle: AppStrings.seeAll),
    CategoriesCarouselItem(
      categories: [
        Category(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiQG3s5bBIJUrsEzZnWL4bb-crGx00QcEUzh8Uq4KiqA&s',
          title: 'Pizza',
          description: 'Starting ',
          price: 70.0,
        ),
        Category(
          imageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ99CL3ZFv2IX_hhVTxMA720lPcY_265CDI9AgdZzYvfw&s=10',
          title: 'Burger',
          description: 'Starting ',
          price: 120.0,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 24),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is HeaderListItem) {
          return HeaderListWidget(item: item, onTapLocation: () {});
        }
        if (item is GreetingListItem) {
          return GreetingWidget(item: item);
        }
        if (item is SearchListItem) {
          return SearchWidget(onSearch: (String? text) {});
        }
        if (item is SectionListItem) {
          return SectionListWidget(item: item);
        }
        if(item is CategoriesCarouselItem){
          return CategoriesCarouselWidget(item: item);
        }
        return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          height: 100,
          child: Center(child: Text('Widget Not found')),
        );
      },
    );
  }
}
