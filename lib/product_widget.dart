import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.title,
    required this.price,
    required this.isFavorite,
    required this.onFavorite,
  });

  final String title;
  final double price;
  final bool isFavorite;
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
        Text(title),
        Text('Pret: $price'),
        InkWell(onTap: onFavorite, child: Icon(isFavorite ? Icons.favorite : Icons.favorite_border)),
      ],
    );
  }
}
