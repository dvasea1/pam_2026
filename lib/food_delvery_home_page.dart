import 'package:flutter/material.dart';
import 'package:test_pam/list_items/header_list_item.dart';
import 'package:test_pam/list_items/list_item.dart';
import 'package:test_pam/widgets/header_list_widget.dart';

class FoodDelveryHomePage extends StatefulWidget {
  const FoodDelveryHomePage({super.key});

  @override
  State<FoodDelveryHomePage> createState() => _FoodDelveryHomePageState();
}

class _FoodDelveryHomePageState extends State<FoodDelveryHomePage> {
  List<ListItem> items = [
    HeaderListItem(locationTitle: 'Halal Lab office', cartCount: 10),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
      final item = items[index];
      if(item is HeaderListItem){
        return HeaderListWidget();
      }
      return SizedBox();
    });
  }
}
