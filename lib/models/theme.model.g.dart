// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThemeModel _$ThemeModelFromJson(Map<String, dynamic> json) {
  return ThemeModel()
    ..primaryColor = json['primaryColor']
    ..fontColor = json['fontColor']
    ..dividerColor = json['dividerColor']
    ..appbarColor = json['appbarColor']
    ..scaffoldBackgroundColor = json['scaffoldBackgroundColor']
    ..greyFont = json['greyFont'];
}

Map<String, dynamic> _$ThemeModelToJson(ThemeModel instance) =>
    <String, dynamic>{
      'primaryColor': instance.primaryColor,
      'fontColor': instance.fontColor,
      'dividerColor': instance.dividerColor,
      'appbarColor': instance.appbarColor,
      'scaffoldBackgroundColor': instance.scaffoldBackgroundColor,
      'greyFont': instance.greyFont
    };
