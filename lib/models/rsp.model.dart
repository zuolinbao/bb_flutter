import 'package:json_annotation/json_annotation.dart';

part 'rsp.model.g.dart';

@JsonSerializable()
class RSPModel {
  RSPModel();

  String RSP_CODE;
  String RSP_DESC;
  var DATA;

  factory RSPModel.fromJson(Map<String, dynamic> json) => _$RSPModelFromJson(json);

  Map<String, dynamic> toJson() => _$RSPModelToJson(this);
}