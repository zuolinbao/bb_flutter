
class Env {
  String appId;
  String appSecret;
  /// 环境url
  String apiUrl;
  String httpProxy;
  String env;
  /// 是否flutter 单独启动
  bool isSingle;

  Env._();

  static Env _singleton = Env._();

  factory Env({
    String appId,
    String appSecret,
    String apiUrl,
    String httpProxy,
    String env,
    bool isSingle
  }) {
    _singleton
      ..appId ??= appId
      ..appSecret ??= appSecret
      ..apiUrl ??= apiUrl
      ..httpProxy ??= httpProxy
      ..env ??= env
      ..isSingle ??= isSingle
    ;

    return _singleton;
  }
}
