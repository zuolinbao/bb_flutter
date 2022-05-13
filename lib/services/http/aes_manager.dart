import 'package:encrypt/encrypt.dart';
import 'dart:convert' as convert;

import 'package:bb_flutter/services/storage/storage.service.dart';

class EncryptManager {
  static String Encrypt128(Map<String, dynamic> params) {
    String value = convert.jsonEncode(params);
    String token = Storage.getString('accesstoken') ?? '';
    String key = token.substring(0, 16);
    final aesKey = Key.fromUtf8(key);
    final iv = IV.fromUtf8('wNSOYIB1k1DjY5lA');

    //加密容器
    final encrypter =
        Encrypter(AES(aesKey, mode: AESMode.cbc, padding: "PKCS7"));
    //加密部分
    final encrypted = encrypter.encrypt(value, iv: iv);

    return encrypted.base64;
  }

  static String Decrypt128(String encryptValue) {
    String token = Storage.getString('accesstoken') ?? '';
    String key = token.substring(0, 16);
    final aesKey = Key.fromUtf8(key);
    final iv = IV.fromUtf8('wNSOYIB1k1DjY5lA');

    var _res = convert.base64.decode(encryptValue);
    final _encrypter =
        Encrypter(AES(aesKey, mode: AESMode.cbc, padding: "PKCS7"));
    final _decrypted = _encrypter.decrypt(Encrypted(_res), iv: iv);

    return _decrypted;
  }
}
