abstract class BaseClientGenerator{
  const BaseClientGenerator();
  String get path;
  String get method;
  String get baseURL;
  dynamic get body;
  Map<String,dynamic>? get queryParameters;
  Map<String,dynamic> get header;
  Duration? get sendTimeout =>  const Duration(seconds: 30000);
  Duration? get receiveTimeOut => const Duration(seconds: 30000);
}