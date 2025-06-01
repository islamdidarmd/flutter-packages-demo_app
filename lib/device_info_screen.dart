import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  String deviceInfo = 'Waiting for the info....';
  DeviceInfo _infoPlugn = DeviceInfo();

  @override
  void initState() {
    super.initState();

    _infoPlugn.getDeviceInfo().then((value) {
      setState(() {
        deviceInfo = value ?? 'No device info available';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Device Info')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Device Information:'),
            Text(deviceInfo),
          ],
        ),
      ),
    );
  }
}
