// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rsp.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RSPModel _$RSPModelFromJson(Map<String, dynamic> json) {
  return RSPModel()
    ..RSP_CODE = json['RSP_CODE'] as String
    ..RSP_DESC = json['RSP_DESC'] as String
    ..DATA = json['DATA'];
}

Map<String, dynamic> _$RSPModelToJson(RSPModel instance) => <String, dynamic>{
      'RSP_CODE': instance.RSP_CODE,
      'RSP_DESC': instance.RSP_DESC,
      'DATA': instance.DATA
    };
