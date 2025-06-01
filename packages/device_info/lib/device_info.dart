
import 'device_info_platform_interface.dart';

class DeviceInfo {
  Future<String?> getDeviceInfo() {
    return DeviceInfoPlatform.instance.getDeviceInfo();
  }
}
