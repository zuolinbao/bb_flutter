import './base.service.dart';

abstract class WohomeService extends BaseService {
  /// 指令统计（年月日）历史数据获取
  Future queryCommandStatistics([Map<String, dynamic> params]);

  /// 指令查询
  Future querySupportCommand([Map<String, dynamic> params]);

  /// 指令下发
  Future sendCommand([Map<String, dynamic> params]);

  /// 指令状态查询
  Future queryCommandStatus([Map<String, dynamic> params]);

  /// 获取设备位置
  Future getPosition([Map<String, dynamic> params]);

  /// 设置设备位置
  Future setPosition([Map<String, dynamic> params]);

  /// 设置设备名称
  Future setName([Map<String, dynamic> params]);

  /// 删除设备
  Future deleteDevice([Map<String, dynamic> params]);

  /// 搜索报警历史（按天划分）
  Future queryWarnHistoryNw([Map<String, dynamic> params]);

  /// 报警历史已读
  Future markWarnCommand([Map<String, dynamic> params]);

  /// 泛智能终端根据CUEI查询三方设备信息
  Future queryThirdTerminalInfoByCuei([Map<String, dynamic> params]);

  /// zigbee- 查询子设备列表
  Future zigbeeSubsetList([Map<String, dynamic> params]);

  /// 根据CUEI获取sdkNo接口
  Future querySdkNo([Map<String, dynamic> params]);

  /// 查询设备详情接口
  Future queryDetail([Map<String, dynamic> params]);

  /// 指令历史消息获取
  Future queryCommandHistory([Map<String, dynamic> params]);

  /// 查询设备在离线状态接口
  Future queryXTerminalOnlineStatus([Map<String, dynamic> params]);

  /// 获取产品配置接口
  Future queryProductConfig([Map<String, dynamic> params]);

  /// 获取设备别名——门窗
  Future queryDeviceCustomName([Map<String, dynamic> params]);

  /// 指令历史消息获取【按照日期切割】
  Future queryHistoryCutByDate([Map<String, dynamic> params]);

  /// 查询设备扩展信息
  Future queryDeviceExtensionInfo([Map<String, dynamic> params]);

  /// 添加修改设备别名
  Future deviceCustomNameUpdate([Map<String, dynamic> params]);

  //大华网关详细信息
  Future getDaHuaDeviceInfo([Map<String, dynamic> params]);

  //大华网关一键消音
  Future closeDahuaAlarm([Map<String, dynamic> params]);

  //大华网关一键消音
  Future queryDaHuaSettingInfo([Map<String, dynamic> params]);

  //大华设备在线情况
  Future queryDaHuaDeviceOnlineStatus([Map<String, dynamic> params]);

  //大华设备更新属性
  Future updateDaHuaProperties([Map<String, dynamic> params]);

  //大华设备删除
  Future deleteDahuaDevice([Map<String, dynamic> params]);
}