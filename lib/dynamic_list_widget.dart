import 'package:flutter/material.dart';
import 'package:test_pam/list_items/categories_carousel.dart';
import 'package:test_pam/list_items/list_item.dart';
import 'package:test_pam/list_items/product_list_item.dart';
import 'package:test_pam/list_items/section_list_item.dart';
import 'package:test_pam/widgets/categories_carousel_widget.dart';
import 'package:test_pam/widgets/product_list_widget.dart';
import 'package:test_pam/widgets/section_list_widget.dart';

import 'models/product.dart';

class DynamicListWidget extends StatefulWidget {
  const DynamicListWidget({super.key});

  @override
  State<DynamicListWidget> createState() => _DynamicListWidgetState();
}

class _DynamicListWidgetState extends State<DynamicListWidget> {
  List<ListItem> items = [
    SectionListItem(title: 'New products', rightActionTitle: 'View all'),
    ProductListItem(product: Product(title: 'Produs1', price: 100.5)),
    ProductListItem(product: Product(title: 'Produs2', price: 4.5)),
    //SectionListItem(title: 'Categories', rightActionTitle: null),
   // CategoriesCarouselItem(categories: ['New', 'Man', 'Child']),
  ];

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        if (item is SectionListItem) {
          return SectionListWidget(item: item);
        }
        if (item is ProductListItem) {
          return ProductListWidget(item: item, onFavorite: () {});
        }
        if (item is CategoriesCarouselItem) {
          return CategoriesCarouselWidget(item: item);
        }
        return SizedBox();
      },
    );
  }
}
