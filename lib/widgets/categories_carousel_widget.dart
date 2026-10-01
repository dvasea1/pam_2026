import 'package:flutter/material.dart';
import 'package:test_pam/category_widget.dart';
import 'package:test_pam/list_items/categories_carousel.dart';

class CategoriesCarouselWidget extends StatelessWidget {
  const CategoriesCarouselWidget({super.key, required this.item});

  final CategoriesCarouselItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: item.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryWidget(
            title: item.categories[index],
            onTap: () {
              debugPrint('Ontap $index');
            },
          );
        },
      ),
    );
  }
}
