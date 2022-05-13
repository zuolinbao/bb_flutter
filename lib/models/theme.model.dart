import 'package:flutter/material.dart';
import 'package:bb_flutter/extension/hex_color.extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theme.model.g.dart';

@JsonSerializable()
class ThemeModel {
  ThemeModel();

  Color primaryColor = HexColor("#E60027");
  Color fontColor = HexColor('#888888');
  Color dividerColor = HexColor('#666666');
  Color appbarColor = Colors.white;
  Color scaffoldBackgroundColor = HexColor('#F8F8F8');
  Color greyFont = HexColor('#999999');

  factory ThemeModel.fromJson(Map<String, dynamic> json) => _$ThemeModelFromJson(json);

  Map<String, dynamic> toJson() => _$ThemeModelToJson(this);
}