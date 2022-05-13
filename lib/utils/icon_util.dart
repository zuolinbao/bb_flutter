import 'package:flutter/material.dart';

class IconUtil {
  static const IconData lamp_fill = _CustomIconData(0xe605);
  static const IconData lamp = _CustomIconData(0xe606);
  static const IconData switch_border = _CustomIconData(0xe603);
  static const IconData mode = _CustomIconData(0xe601);
  static const IconData adjust = _CustomIconData(0xe604);
  static const IconData count_down = _CustomIconData(0xe602);
  static const IconData timing = _CustomIconData(0xe607);
  static const IconData default_mode = _CustomIconData(0xe608);
  static const IconData read_mode = _CustomIconData(0xe611);
  static const IconData sleep_mode = _CustomIconData(0xe615);
  static const IconData glare_mode = _CustomIconData(0xe614);
  static const IconData low_light_mode = _CustomIconData(0xe612);
  static const IconData light = _CustomIconData(0xe609);
  static const IconData temperature = _CustomIconData(0xe60b);
  static const IconData read = _CustomIconData(0xe611);
  static const IconData learn = _CustomIconData(0xe617);
  static const IconData computer = _CustomIconData(0xe618);
  static const IconData children = _CustomIconData(0xe619);
  static const IconData close_curtain = _CustomIconData(0xe61a);
  static const IconData pause = _CustomIconData(0xe61b);
  static const IconData open_curtain = _CustomIconData(0xe61c);
  static const IconData recharge = _CustomIconData(0xe61d);
  static const IconData volume = _CustomIconData(0xe623);
  static const IconData switch_icon = _CustomIconData(0xe622);
  static const IconData record = _CustomIconData(0xe620);
  static const IconData volume_off1 = _CustomIconData(0xe61f);
  static const IconData volume_off2 = _CustomIconData(0xe61e);
  static const IconData local_clean = _CustomIconData(0xe626);
  static const IconData wall_clean = _CustomIconData(0xe621);
  static const IconData auto_clean = _CustomIconData(0xe627);
}

class _CustomIconData extends IconData {
  const _CustomIconData(int codePoint)
      : super(
    codePoint,
    fontFamily: 'iconfont',
  );
}