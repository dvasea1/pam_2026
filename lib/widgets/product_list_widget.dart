import 'package:flutter/material.dart';
import 'package:test_pam/list_items/product_list_item.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({super.key, required this.item, required this.onFavorite});

  final ProductListItem item;
  final VoidCallback onFavorite;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          width: double.infinity,
          child: Image.network('https://utm.md/wp-content/uploads/2022/03/utm-main.jpg'),
        ),
        Text(item.product.title),
        Text('Pret: ${item.product.price}'),
        InkWell(onTap: onFavorite, child: Icon(item.product.isFavorite ? Icons.favorite : Icons.favorite_border)),
      ],
    );
  }
}
