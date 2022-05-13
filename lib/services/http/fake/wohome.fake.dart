import 'package:bb_flutter/models/base.model.dart';
import 'package:bb_flutter/services/http/api/wohome.service.dart';
import '../config.dart';

class WohomeFake extends WohomeService {
  @override
  Future querySupportCommand([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': 'fb37ed2cd9714260ad9803d24b863aa8',
      'RSP': {
        'RSP_CODE': '0000',
        'RSP_DESC': '成功',
        'DATA': [
          {
            'pid': '5us8hegkacvx',
            'code': 'bright_value',
            'name': '亮度值',
            'power': 'read、write、report',
            'value_format': '0-100,%',
            'special': false
          },
          {
            'pid': '5us8hegkacvx',
            'code': 'countdown',
            'name': '倒计时剩余时间',
            'power': 'read,write,report',
            'value_format': '0-86400',
            'special': false
          },
          {
            'pid': '5us8hegkacvx',
            'code': 'light_mode',
            'name': '模式',
            'power': 'read、write、report',
            'value_format': ['white', 'colour', 'scene', 'music'],
            'special': false
          },
          {
            'pid': '5us8hegkacvx',
            'code': 'switch',
            'name': '开关',
            'power': 'read,write,report',
            'value_format': 'true,false',
            'special': false
          },
          {
            'pid': '5us8hegkacvx',
            'code': 'temp_value',
            'name': '冷暖值',
            'power': 'read、write、report',
            'value_format': '0-100,%',
            'special': false
          }
        ]
      }
    }));
  }

  @override
  Future queryCommandStatus([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': 'fb37ed2cd9714260ad9803d24b863aa8',
      'RSP': {'RSP_CODE': '0000', 'RSP_DESC': '成功', 'DATA': []}
    }));
  }

  @override
  Future sendCommand([Map<String, dynamic> params]) {
    return Future.value();
  }

  @override
  Future getPosition([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': 'fb37ed2cd9714260ad9803d24b863aa8',
      'RSP': {
        'RSP_CODE': '0000',
        'RSP_DESC': '成功',
        'DATA': {'roomList': []}
      }
    }));
  }

  @override
  Future setName([Map<String, dynamic> params]) {
    // TODO: implement setName
    throw UnimplementedError();
  }

  @override
  Future setPosition([Map<String, dynamic> params]) {
    // TODO: implement setPosition
    throw UnimplementedError();
  }

  @override
  Future queryCommandStatistics([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': '9cb0ec061e044b3c8cf846b7a72829ad',
      'RSP': {
        'RSP_CODE': '0000',
        'RSP_DESC': '成功',
        'DATA': [
          {'name': 22, 'value': 56},
          {'name': 01, 'value': 73},
          {'name': 23, 'value': 74.5},
          {'name': 02, 'value': 27.1},
          {'name': 24, 'value': 4.5},
          {'name': 03, 'value': 16.4},
          {'name': 25, 'value': 99.2},
          {'name': 04, 'value': 0.8},
          {'name': 26, 'value': 82.51},
          {'name': 05, 'value': 54.9},
          {'name': 27, 'value': 14.7},
          {'name': 06, 'value': 71.8},
          {'name': 07, 'value': 94.7},
          {'name': 08, 'value': 57.8},
          {'name': 09, 'value': 5.1},
          {'name': 10, 'value': 52.1},
          {'name': 11, 'value': 45.2},
          {'name': 12, 'value': 69.5},
          {'name': 13, 'value': 11.8},
          {'name': 14, 'value': 50.8},
          {'name': 15, 'value': 18.3},
          {'name': 16, 'value': 39.3},
          {'name': 17, 'value': 41.4},
          {'name': 18, 'value': 89.1},
          {'name': 19, 'value': 21.4},
          {'name': 20, 'value': 39.9},
          {'name': 21, 'value': 35.1}
        ]
      }
    }));
  }

  @override
  Future deleteDevice([Map<String, dynamic> params]) {
    // TODO: implement deleteDevice
    throw UnimplementedError();
  }

  @override
  Future queryWarnHistoryNw([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': '9cb0ec061e044b3c8cf846b7a72829ad',
      'RSP': {
        'RSP_CODE': '0000',
        'RSP_DESC': '成功',
        'DATA': {
          "total": 20,
          "unread": 10,
          "data": {
            "2020-11-06": [
              {
                "value": "hear_rate_warn",
                "warn_value": "180",
                "t": 1592558049000,
                "read": 0,
                "id": "123",
                "date": "2020-11-06",
                "time": "10:29:12"
              },
              {
                "value": "temp_warn",
                "warn_value": "41",
                "t": 1592558049000,
                "read": 0,
                "id": "234",
                "date": "2020-11-06",
                "time": "10:30:12"
              }
            ],
            "2020-11-07": [
              {
                "value": "hear_rate_warn",
                "warn_value": "180",
                "t": 1592558049000,
                "read": 0,
                "id": "123",
                "date": "2020-11-06",
                "time": "10:29:12"
              },
              {
                "value": "temp_warn",
                "warn_value": "41",
                "t": 1592558049000,
                "read": 0,
                "id": "234",
                "date": "2020-11-06",
                "time": "10:30:12"
              }
            ],
            "2020-11-08": [
              {
                "value": "hear_rate_warn",
                "warn_value": "180",
                "t": 1592558049000,
                "read": 0,
                "id": "123",
                "date": "2020-11-06",
                "time": "10:29:12"
              },
              {
                "value": "temp_warn",
                "warn_value": "41",
                "t": 1592558049000,
                "read": 1,
                "id": "234",
                "date": "2020-11-06",
                "time": "10:30:12"
              }
            ]
          }
        }
      }
    }));
  }

  @override
  Future markWarnCommand([Map<String, dynamic> params]) {
    // TODO: implement markWarnCommand
    throw UnimplementedError();
  }

  @override
  Future queryThirdTerminalInfoByCuei([Map<String, dynamic> params]) {
    return Future.value(BaseModel.fromJson({
      'STATUS': '200',
      'MSG': '服务调用成功！',
      'LOGID': 'fb37ed2cd9714260ad9803d24b863aa8',
      'RSP': {
        'RSP_CODE': '0000',
        'RSP_DESC': '成功',
        'DATA': {
          "third_dev_id": "200000010000001",
          "uid": "uid999999",
          "name": "aaa",
          "sub": false,
          "category": "cz",
          "category_name": "aaa",
          "fmver": "1.23.5",
          "model": "2333333"
        }
      }
    }));
  }

  @override
  Future zigbeeSubsetList([Map<String, dynamic> params]) {
    throw UnimplementedError();
  }

  @override
  Future querySdkNo([Map<String, dynamic> params]) {
    // TODO: implement querySdkNo
    throw UnimplementedError();
  }

  @override
  Future queryDetail([Map<String, dynamic> params]) {
    // TODO: implement queryDetail
    throw UnimplementedError();
  }

  @override
  Future queryCommandHistory([Map<String, dynamic> params]) {
    // TODO: implement queryDetail
    throw UnimplementedError();
  }

  @override
  Future queryXTerminalOnlineStatus([Map<String, dynamic> params]) {
    // TODO: implement queryDetail
    throw UnimplementedError();
  }

  @override
  Future queryProductConfig([Map<String, dynamic> params]) {
    // TODO: implement queryDetail
    throw UnimplementedError();
  }

  @override
  Future queryDeviceCustomName([Map<String, dynamic> params]) {
    // TODO: implement queryDeviceCustomName
    throw UnimplementedError();
  }

  @override
  Future queryHistoryCutByDate([Map<String, dynamic> params]) {
    // TODO: implement queryHistoryCutByDate
    throw UnimplementedError();
  }

  @override
  Future queryDeviceExtensionInfo([Map<String, dynamic> params]) {
    // TODO: implement queryDeviceExtensionInfo
    throw UnimplementedError();
  }

  @override
  Future deviceCustomNameUpdate([Map<String, dynamic> params]) {
    // TODO: implement deviceCustomNameUpdate
    throw UnimplementedError();
  }

  @override
  Future getDaHuaDeviceInfo([Map<String, dynamic> params]) {
    // TODO: implement getDaHuaDeviceInfo
    throw UnimplementedError();
  }

  @override
  Future closeDahuaAlarm([Map<String, dynamic> params]) {
    // TODO: implement closeDahuaAlarm
    throw UnimplementedError();
  }

  @override
  Future queryDaHuaSettingInfo([Map<String, dynamic> params]) {
    // TODO: implement queryDaHuaSettingInfo
    throw UnimplementedError();
  }

  @override
  Future queryDaHuaDeviceOnlineStatus([Map<String, dynamic> params]) {
    // TODO: implement queryDaHuaDeviceOnlineStatus
    throw UnimplementedError();
  }

  @override
  Future updateDaHuaProperties([Map<String, dynamic> params]) {
    // TODO: implement updateDaHuaProperties
    throw UnimplementedError();
  }

  @override
  Future deleteDahuaDevice([Map<String, dynamic> params]) {
    // TODO: implement deleteDahuaDevice
    throw UnimplementedError();
  }
}
