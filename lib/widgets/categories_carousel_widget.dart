import 'package:flutter/material.dart';
import 'package:test_pam/category_widget.dart';
import 'package:test_pam/list_items/categories_carousel_list_item.dart';

class CategoriesCarouselWidget extends StatelessWidget {
  const CategoriesCarouselWidget({super.key, required this.item});

  final CategoriesCarouselItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: SizedBox(
        height: 172,
        child: ListView.builder(
          itemCount: item.categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryWidget(
              category: item.categories[index],
              onTap: () {
                debugPrint('Ontap $index');
              },
            );
          },
        ),
      ),
    );
  }
}
