import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_pam/list_items/categories_carousel_list_item.dart';
import 'package:test_pam/list_items/greeting_list_item.dart';
import 'package:test_pam/list_items/header_list_item.dart';
import 'package:test_pam/list_items/list_item.dart';
import 'package:test_pam/list_items/search_list_item.dart';
import 'package:test_pam/list_items/section_list_item.dart';
import 'package:test_pam/models/category.dart';
import 'package:test_pam/resources/app_strings.dart';
import 'package:test_pam/screens/home/home_controller.dart';
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
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
  }

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<HomeController>();
    return Obx(
      () => controller.items.value.isEmpty
          ? Column(children: [CircularProgressIndicator()])
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemCount: controller.items.value.length,
              itemBuilder: (context, index) {
                final item = controller.items.value[index];
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
                if (item is CategoriesCarouselItem) {
                  return CategoriesCarouselWidget(item: item);
                }
                return Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                  height: 100,
                  child: Center(child: Text('Widget Not found')),
                );
              },
            ),
    );
  }
}
