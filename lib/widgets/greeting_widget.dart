import 'package:flutter/material.dart';
import 'package:test_pam/list_items/greeting_list_item.dart';
import 'package:test_pam/resources/app_strings.dart';
import 'package:test_pam/resources/app_text_styles.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({super.key, required this.item});

  final GreetingListItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16),
      child: Row(
        children: [
          Text('${AppStrings.hey} ${item.firstName}, ', style: AppTextStyles.regularText),
          Text(AppStrings.goodAfternoon, style: AppTextStyles.boldText),
        ],
      ),
    );
  }
}
