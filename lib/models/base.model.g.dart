// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) {
  return BaseModel()
    ..STATUS = json['STATUS'] as String
    ..MSG = json['MSG'] as String
    ..LOGID = json['LOGID'] as String
    ..RSP = json['RSP'] == null
        ? null
        : RSPModel.fromJson(json['RSP'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BaseModelToJson(BaseModel instance) => <String, dynamic>{
      'STATUS': instance.STATUS,
      'MSG': instance.MSG,
      'LOGID': instance.LOGID,
      'RSP': instance.RSP
    };
