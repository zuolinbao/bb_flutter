import 'package:bb_flutter/models/rsp.model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base.model.g.dart';

@JsonSerializable()
class BaseModel {
 BaseModel();

 String STATUS;

 String MSG;

 String LOGID;

 RSPModel RSP;

 factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);

 Map<String, dynamic> toJson() => _$BaseModelToJson(this);

}
