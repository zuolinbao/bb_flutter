import 'package:bb_flutter/services/http/api/wohome.service.dart';

import '../config.dart';

class Wohome implements WohomeService {
  @override
  Future querySupportCommand([Map<String, dynamic> params]) {
    return request('QuerySupportCommand', params);
  }

  @override
  Future queryCommandStatus([Map<String, dynamic> params]) {
    return request('QueryCommandStatus', params);
  }

  @override
  Future sendCommand([Map<String, dynamic> params]) {
    return request('SendCommand', params);
  }

  @override
  Future getPosition([Map<String, dynamic> params]) {
    return request('QueryRoomList', params);
  }

  @override
  Future setName([Map<String, dynamic> params]) {
    return request('ModifyDeviceName', params);
  }

  @override
  Future setPosition([Map<String, dynamic> params]) {
    return request('ChangeDeviceRoom', params);
  }

  @override
  Future queryCommandStatistics([Map<String, dynamic> params]) {
    return request('QueryCommandStatistics', params);
  }

  @override
  Future deleteDevice([Map<String, dynamic> params]) {
    return request('RemoveDevice', params);
  }

  @override
  Future queryWarnHistoryNw([Map<String, dynamic> params]) {
    return request('QueryWarnHistoryNw', params);
  }

  @override
  Future markWarnCommand([Map<String, dynamic> params]) {
    return request('MarkWarnCommand', params);
  }

  @override
  Future queryThirdTerminalInfoByCuei([Map<String, dynamic> params]) {
    return request('QueryThirdTerminalInfoByCuei', params);
  }

  @override
  Future zigbeeSubsetList([Map<String, dynamic> params]) {
    return request('ZigbeeSubsetList', params);
  }

  @override
  Future querySdkNo([Map<String, dynamic> params]) {
    return request('QuerySdkNo', params);
  }

  @override
  Future queryDetail([Map<String, dynamic> params]) {
    return request('queryDetail', params);
  }

  @override
  Future queryCommandHistory([Map<String, dynamic> params]) {
    return request('QueryCommandHistory', params);
  }

  @override
  Future queryXTerminalOnlineStatus([Map<String, dynamic> params]) {
    return request('QueryXTerminalOnlineStatus', params);
  }

  @override
  Future queryProductConfig([Map<String, dynamic> params]) {
    return request('QueryProductConfig', params);
  }

  @override
  Future queryDeviceCustomName([Map<String, dynamic> params]) {
    // TODO: implement queryDeviceCustomName
    return request('QueryDeviceCustomName', params);
  }

  @override
  Future queryHistoryCutByDate([Map<String, dynamic> params]) {
    // TODO: implement queryHistoryCutByDate
    return request('QueryHistoryCutByDate', params);
  }

  @override
  Future queryDeviceExtensionInfo([Map<String, dynamic> params]) {
    // TODO: implement queryDeviceExtensionInfo
    return request('QueryDeviceExtensionInfo', params);
  }

  @override
  Future deviceCustomNameUpdate([Map<String, dynamic> params]) {
    // TODO: implement deviceCustomNameUpdate
    return request('DeviceCustomNameUpdate', params);
  }

  @override
  Future getDaHuaDeviceInfo([Map<String, dynamic> params]) {
    // TODO: implement getDaHuaDeviceInfo
    return aesRequest('QryLechengDeviceDetailInfo', params);
  }

  @override
  Future closeDahuaAlarm([Map<String, dynamic> params]) {
    // TODO: implement closeDahuaAlarm
    return aesRequest('LechengDeviceControl', params);
  }

  @override
  Future queryDaHuaSettingInfo([Map<String, dynamic> params]) {
    // TODO: implement queryDaHuaSettingInfo
    return aesRequest('QryLenchengDeviceVersion', params);
  }

  @override
  Future queryDaHuaDeviceOnlineStatus([Map<String, dynamic> params]) {
    // TODO: implement queryDaHuaDeviceOnlineStatus
    return aesRequest('LechengDeviceOnline', params);
  }

  @override
  Future updateDaHuaProperties([Map<String, dynamic> params]) {
    // TODO: implement updateDaHuaProperties
    return aesRequest('SetLechengDeviceProperties', params);
  }

  @override
  Future deleteDahuaDevice([Map<String, dynamic> params]) {
    // TODO: implement deleteDahuaDevice
    return aesRequest('UnBindLechengDevice', params);
  }
}
