
import 'package:flutter_blue/flutter_blue.dart';

// Renaming BluetoothService to BluetoothManager to avoid conflict with FlutterBlue's BluetoothService
class BluetoothManager {
  FlutterBlue flutterBlue = FlutterBlue.instance;
  List<BluetoothDevice> devicesList = [];
  BluetoothDevice? connectedDevice;
  // This list holds instances of the BluetoothService class provided by flutter_blue
  List<BluetoothService> services = [];

  void startScan() {
    flutterBlue.startScan(timeout: Duration(seconds: 4));

    var subscription = flutterBlue.scanResults.listen((results) {
      for (ScanResult result in results) {
        addDeviceToList(result.device);
      }
    });

    // Ensure to cancel this subscription appropriately.
  }

  void stopScan() {
    flutterBlue.stopScan();
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
    services = await device.discoverServices();
  }

  void disconnectFromDevice(BluetoothDevice device) async {
    if (connectedDevice != null && device.id == connectedDevice!.id) {
      await device.disconnect();
      connectedDevice = null;
    }
  }

  bool isDeviceConnected(BluetoothDevice device) {
    return connectedDevice?.id == device.id;
  }
}