import 'dart:convert';

class Product {
  final String title;
  final double price;
  bool isFavorite;

  Product({required this.title, required this.price, this.isFavorite = false});

  factory Product.fromJson(Map<String, dynamic> jsonMap) {
    return Product(title: jsonMap['title'] as String, price: jsonMap['price'] as double);
  }

  Map<String, dynamic> toJson() => {'Title': title, 'price': price};
}
