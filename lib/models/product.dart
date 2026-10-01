class Product {
  final String title;
  final double price;
  bool isFavorite;

  Product({required this.title, required this.price, this.isFavorite = false});
}