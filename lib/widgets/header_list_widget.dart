import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_pam/resources/Icons.dart';

class HeaderListWidget extends StatelessWidget {
  const HeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [InkWell(
          child: AppIcons.menuIcon,
        )],
      );
  }
}
