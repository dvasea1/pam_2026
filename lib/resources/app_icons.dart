import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  static final String _path = 'assets/icons/';

  static SvgPicture get menuIcon => SvgPicture.asset('${_path}menu.svg');
  static SvgPicture get arrowDownIcon => SvgPicture.asset('${_path}arrow_down.svg');
  static SvgPicture get bagIcon => SvgPicture.asset('${_path}bag_icon.svg');
  static SvgPicture get searchIcon => SvgPicture.asset('${_path}Search.svg');
  static SvgPicture get arrowRightIcon => SvgPicture.asset('${_path}arrow_right.svg');
}
