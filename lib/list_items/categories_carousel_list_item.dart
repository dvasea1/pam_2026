import 'package:test_pam/list_items/list_item.dart';
import 'package:test_pam/models/category.dart';

class CategoriesCarouselItem extends ListItem{
  final List<Category> categories;

  CategoriesCarouselItem({required this.categories});
}