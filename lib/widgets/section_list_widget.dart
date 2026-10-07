import 'package:flutter/material.dart';
import 'package:test_pam/list_items/section_list_item.dart';
import 'package:test_pam/resources/app_icons.dart';
import 'package:test_pam/resources/app_text_styles.dart';

class SectionListWidget extends StatelessWidget {
  const SectionListWidget({super.key, required this.item});

  final SectionListItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(item.title, style: AppTextStyles.regular.copyWith(fontSize: 20)),
        Expanded(child: SizedBox()),
        item.rightActionTitle != null ? InkWell(child: Text(item.rightActionTitle!)) : SizedBox(),
        SizedBox(width: 10,),
        AppIcons.arrowRightIcon,
      ],
    );
  }
}
