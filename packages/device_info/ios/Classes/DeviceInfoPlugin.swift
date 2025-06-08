import Flutter
import UIKit

public class DeviceInfoPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "device_info", binaryMessenger: registrar.messenger())
    let instance = DeviceInfoPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getDeviceInfo":
        let info = "iOS \(UIDevice.current.model) \n\(UIDevice.current.systemName), \n version\(UIDevice.current.systemVersion)"
        result(info)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
