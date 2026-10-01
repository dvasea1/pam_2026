import 'package:test_pam/list_items/list_item.dart';

class HeaderListItem extends ListItem{
  final String locationTitle;
  final int cartCount;

  new({required this.locationTitle, required this.cartCount});
}