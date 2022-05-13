import 'package:dio/dio.dart';
import 'package:bb_flutter/services/http/env.dart';
import 'interceptors.dart';

class Http {
  Http._();

  static Http _singleton = Http._();

  factory Http() {
    return _singleton;
  }

  static Dio dio = Dio(
    BaseOptions(baseUrl: Env().apiUrl, headers: {
      'Accept': 'application/json',
    }),
  )..interceptors.add(CustomInterceptors());

  /// get
  Future get<T>(path,
      {data,
      Options options,
      CancelToken cancelToken,
      ProgressCallback onReceiveProgress}) {
    data ??= Map<String, dynamic>.from({});

    return dio.get<T>(path,
        queryParameters: data,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress);
  }

  /// delete
  Future delete<T>(
    path, {
    data,
    Options options,
    CancelToken cancelToken,
  }) {
    data ??= Map<String, dynamic>.from({});

    return dio.delete<T>(
      path,
      queryParameters: data,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// put
  Future put<T>(
    path, {
    data,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) {
    data ??= Map<String, dynamic>.from({});

    return dio.put<T>(path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
  }

  /// post
  Future post<T>(path,
      {data, Options options, CancelToken cancelToken, onUploadProgress}) {
    data ??= Map<String, dynamic>.from({});

    return dio.post<T>(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }
}
