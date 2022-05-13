import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:bb_flutter/extension/hex_color.extension.dart';
import 'package:bb_flutter/services/http/http.base.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../storage/storage.service.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers['accesstoken'] = Storage.getString('accesstoken');
    // (Http.dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //     (HttpClient client) {
    //   client.findProxy = (uri) {
    //     //proxy all request to localhost:8888
    //     // return "PROXY 172.16.10.111:8888";
    //     return "PROXY 192.168.31.112:8888";
    //   };
    //   client.badCertificateCallback =
    //       (X509Certificate cert, String host, int port) => true;
    // };
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    var rsp = response.data['RSP'];
    if (rsp['RSP_CODE'] != '0000') {
      return Future.error(
          DioError(request: response.request, response: response, error: rsp));
    }
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    print('error === ${err.error}');
    String message = err.error is String ? err.error : err.error['RSP_DESC'];
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        backgroundColor: HexColor('#00000088'),
        gravity: ToastGravity.CENTER);
    switch (err.type) {
      case DioErrorType.RESPONSE:
        break;
      default:
        break;
    }
    return super.onError(err);
  }
}
