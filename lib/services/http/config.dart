import 'dart:math';

import 'package:dio/dio.dart';
import 'package:bb_flutter/models/base.model.dart';
import 'package:bb_flutter/services/http/aes_manager.dart';
import 'package:bb_flutter/services/storage/storage.service.dart';
import 'package:bb_flutter/utils/util.dart';

import 'http.base.dart';

Map<String, dynamic> getCommonParams(
    String key, Map<String, dynamic> bodyParams,
    {bool aes}) {
  bodyParams ??= {};
  String channel = 'wostore';
  if (['QueryHistoryCutByDate', 'DeviceCustomNameUpdate'].contains(key)) {
    channel = 'wohome';
  }
  const version = '';
  int resTime = DateTime.now().millisecondsSinceEpoch;
  String reqSeq = (Random().nextInt(89999) + 100000).toString();
  String sign =
      Util.generateMd5(key + resTime.toString() + reqSeq + channel + version);

  if (['QueryRoomList', 'ModifyDeviceName', 'ChangeDeviceRoom', 'RemoveDevice']
      .contains(key)) {
    if (bodyParams['deviceIdOut'] == null) {
      bodyParams['deviceIdOut'] = Storage.getString('cuei');
    }
  } else {
    if (bodyParams['cuei'] == null) {
      bodyParams['cuei'] = Storage.getString('cuei');
    }
  }
  if (['QueryHistoryCutByDate'].contains(key)) {
    bodyParams['dev_id'] = Storage.getString('cuei');
    bodyParams.remove('cuei');
  }

  //去除cuei参数
  if ([
    'QryLechengDeviceDetailInfo', //大华网关详情查询
    'LechengDeviceControl', //大华网关一键消音
    'QryLenchengDeviceVersion', //大华设备版本信息查询
    'LechengDeviceOnline' //大华自身在线状态查询
  ].contains(key)) {
    bodyParams.remove('cuei');
  }

  Map<String, dynamic> params = {
    'header': {
      'key': key,
      'resTime': resTime,
      'reqSeq': reqSeq,
      'channel': channel,
      'version': version,
      'sign': sign,
    },
    'body': bodyParams
  };

  if (aes == true) {
    String aesParams = EncryptManager.Encrypt128(bodyParams);
    params['body'] = {'param': aesParams};
  }

  return params;
}

//没有加密请求
Future<BaseModel> request(key, bodyParams) => Http()
    .post('/wohome/dispatcher', data: getCommonParams(key, bodyParams))
    .then((res) => BaseModel.fromJson(res.data));

//加密请求
Future aesRequest(key, bodyParams) async {
  try {
    dynamic res = await Http().post('/wohome/dispatcher',
        data: getCommonParams(key, bodyParams, aes: true));
    BaseModel resModel = BaseModel.fromJson(res.data);
    return resModel;
  } on DioError catch (e) {
    BaseModel resModel = BaseModel.fromJson(e.response.data);
    return resModel;
  }
}
