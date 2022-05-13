import 'dart:math';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';

class Util {
  static List<int> parseColor(String hexStr) {
    return [hexStr.substring(1, 3), hexStr.substring(3, 5), hexStr.substring(5, 7)].map((e) => int.parse(e, radix: 16)).toList();
  }

  static String pad(String s) => s.length == 1 ? '0' + s : s;


  /// hex color to kelvin
  static List<String> gradientColor(start, end, int steps, [gamma]) {
    int i = 0;
    int j = 0;
    var ms;
    var me;
    List<String> output = [];
    List so = ['', '', ''];
    gamma = gamma ?? 1;
    double normalize(channel) => pow(channel / 255, gamma);
    List startList = parseColor(start).map(normalize).toList();
    List endList = parseColor(end).map(normalize).toList();

    for(i = 0; i < steps; i++) {
      ms = i / (steps - 1);
      me = 1 - ms;
      for(j = 0; j < 3; j++) {
        so[j] = pad((pow(startList[j] * me + endList[j] * ms, 1 / gamma) * 255).toInt().toRadixString(16));
      }
      output.add('#' + so.join(''));
    }

    return output;

  }

  /// kelvin to rgb
  static String kelvin2hex(num kelvin) {
    double temp = kelvin / 100;
    num red, green, blue;

    if(temp <= 66) {
      red = 255;
      green = temp;
      green = 99.4708025861 * log(green) - 161.1195681661;
      if(temp <= 19) {
        blue = 0;
      } else {
        blue = temp - 10;
        blue = 138.5177312231 * log(blue) - 305.0447927307;
      }
    } else {
      red = temp - 60;
      red = 329.698727446 * pow(red, -0.1332047592);

      green = temp - 60;
      green = 288.1221695283 * pow(green, -0.0755148492 );

      blue = 255;
    }

    Map<String, int> rgb = {
      'r' : red.toInt().clamp(0, 255),
      'g' : green.toInt().clamp(0, 255),
      'b' : blue.toInt().clamp(0, 255)
    };
    print('dddddd = ${rgb2hex(rgb)}');

    return rgb2hex(rgb);

  }

  static String rgb2hex(Map<String, int> rgb) {
    return '#' + rgb['r'].toRadixString(16).padLeft(2, '0') + rgb['g'].toRadixString(16).padLeft(2, '0') + rgb['b'].toRadixString(16).padLeft(2, '0');
  }

  static String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  /// 获取图片路径
  static String getImgPath(String name, {String format='png'}) {
    return 'assets/imgs/$name.$format';
  }

  /// 日期格式化
  static String dateTimeFormat(DateTime time, String format) {
    DateFormat f = DateFormat(format);
    return f.format(time);
  }

  /// 秒转时间
  static String seconds2Time(int seconds) {
    int h = (seconds ~/ 3600).round();
    int m = ((seconds - h *3600) ~/ 60).round().clamp(0, 60);
    int s = (seconds - h * 3600 - m * 60).clamp(0, 60);
    return '${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  /// 字符串时间戳转指定格式的时间
  static String dateTimeWithFormat(String t, String format) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(int.parse(t));
    String time = Util.dateTimeFormat(date, format);
    return time;
  }
}