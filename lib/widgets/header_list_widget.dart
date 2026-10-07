import 'package:flutter/material.dart';
import 'package:test_pam/list_items/header_list_item.dart';
import 'package:test_pam/resources/app_colors.dart';
import 'package:test_pam/resources/app_icons.dart';
import 'package:test_pam/resources/app_strings.dart';
import 'package:test_pam/resources/app_text_styles.dart';

class HeaderListWidget extends StatelessWidget {
  const HeaderListWidget({super.key, required this.item, required this.onTapLocation});

  final HeaderListItem item;
  final VoidCallback onTapLocation;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(child: AppIcons.menuIcon),
        SizedBox(width: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.deliverTo.toUpperCase(), style: AppTextStyles.bold.copyWith(fontSize: 12)),
            InkWell(
              onTap: onTapLocation,
              child: Row(
                children: [
                  Text(item.locationTitle, style: AppTextStyles.regular),
                  Padding(padding: EdgeInsetsGeometry.only(left: 9), child: AppIcons.arrowDownIcon),
                ],
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        SizedBox(
          width: 50,
          height: 50,
          child: Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(45),
                  child: Container(
                    width: 45,
                    height: 45,
                    color: AppColors.iconDefaultColor,
                    child: Center(child: AppIcons.bagIcon),
                  ),
                ),
              ),
              if (item.cartCount > 0)
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(25),
                    child: Container(
                      width: 25,
                      height: 25,
                      color: AppColors.primaryColor,
                      child: Center(
                        child: Text(
                          item.cartCount.toString(),
                          style: AppTextStyles.bold.copyWith(fontSize: 16, color: AppColors.whiteColor),
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
