class ExceptionModel {
  String? methodName;
  String? appVersion;
  String? deviceId;
  String? message;
  String? details;
  String? platform;
  String? user;
  String? inputs;

  ExceptionModel({
    this.methodName,
    this.appVersion,
    this.deviceId,
    this.message,
    this.details,
    this.platform,
    this.user,
    this.inputs,
  });

  Map<String, dynamic> toJson() {
    return {
      "methodName": methodName,
      "appVersion": appVersion,
      "deviceId": deviceId,
      "message": message,
      "details": details,
      "platform": platform,
      "user": user,
      "inputs": inputs,
    };
  }
}
