// services/bluetooth_service.dart
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothService {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devicesList = [];
  BluetoothDevice? connectedDevice;
  List<BluetoothService> services = [];

  void startScan() {
    flutterBlue.startScan(timeout: Duration(seconds: 4));

    var subscription = flutterBlue.scanResults.listen((results) {
      for (ScanResult result in results) {
        addDeviceToList(result.device);
      }
    });

    subscription.cancel(); // You may want to cancel this subscription when you stop scanning or dispose of the class
  }

  void addDeviceToList(final BluetoothDevice device) {
    if (!devicesList.any((element) => element.id == device.id)) {
      devicesList.add(device);
    }
  }

  Future<void> connectToDevice(BluetoothDevice device) async {
    try {
      await device.connect();
      connectedDevice = device;
      discoverServices(device);
    } catch (e) {
      if (e.toString() != 'already_connected') {
        rethrow;
      }
    }
  }

  Future<void> discoverServices(BluetoothDevice device) async {
    var services = await device.discoverServices();
    // This is where you would typically set up notifications or write to characteristics
  }

  void disconnectFromDevice(BluetoothDevice device) async {
    if (connectedDevice != null && device.id == connectedDevice!.id) {
      await device.disconnect();
      connectedDevice = null;
    }
  }
}