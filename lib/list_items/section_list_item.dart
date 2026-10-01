import 'package:test_pam/list_items/list_item.dart';

class SectionListItem extends ListItem{
  final String title;
  final String? rightActionTitle;

  SectionListItem({required this.title, required this.rightActionTitle});
}