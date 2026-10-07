import 'package:flutter/material.dart';
import 'package:test_pam/models/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category, this.onTap});

  final Category category;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: Container(width: 122, height: 104, child: Image.network(category.imageUrl),),
            ),
            Text(category.title),
          ],
        ),
      ),
    );
  }
}

