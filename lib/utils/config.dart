class Config {
  // 是否release 版本
  static bool get isRelease => bool.fromEnvironment("dart.vm.product");
  static String get baseUrl =>
      isRelease ? 'http://supplier.youzland.com' : '10.10.0.1';
}
