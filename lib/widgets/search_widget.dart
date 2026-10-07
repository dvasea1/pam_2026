import 'package:flutter/material.dart';
import 'package:test_pam/resources/app_colors.dart';
import 'package:test_pam/resources/app_icons.dart';
import 'package:test_pam/resources/app_strings.dart';
import 'package:test_pam/resources/app_text_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.onSearch});

  final Function(String? text) onSearch;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: AppColors.separatorsColor, borderRadius: BorderRadiusGeometry.circular(10)),
      child: Row(
        children: [
          AppIcons.searchIcon,
          SizedBox(width: 12),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: AppStrings.searchDishes,
                hintStyle: AppTextStyles.regular,
                border: InputBorder.none,
              ),
              onChanged: (text) {
                onSearch(text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
