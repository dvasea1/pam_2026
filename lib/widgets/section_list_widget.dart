import 'package:flutter/material.dart';
import 'package:test_pam/list_items/section_list_item.dart';

class SectionListWidget extends StatelessWidget {
  const SectionListWidget({super.key, required this.item});

  final SectionListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Text(item.title),
        Flexible(child: Container(color: Colors.red,height: 2 ,)),
        item.rightActionTitle != null ? InkWell(child: Text(item.rightActionTitle!)) : SizedBox(),
      ],
    );
  }
}
