
import 'package:flutter/material.dart';
import 'package:flexform/services/bluetooth_manager.dart'; // Updated import
import 'package:flutter_blue/flutter_blue.dart';

class BluetoothScreen extends StatefulWidget {
  @override
  _BluetoothScreenState createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  final BluetoothManager _bluetoothManager = BluetoothManager(); // Updated reference

  bool isScanning = false;

  @override
  void initState() {
    super.initState();
    startScanning();
  }

  void startScanning() {
    setState(() => isScanning = true);
    _bluetoothManager.startScan(); // Updated method call
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        setState(() => isScanning = false);
        _bluetoothManager.stopScan(); // Updated method call
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dispositivos Bluetooth'),
        actions: [
          isScanning
              ? CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                )
              : IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: () => startScanning(),
                ),
        ],
      ),
      body: StreamBuilder<List<ScanResult>>(
        stream: FlutterBlue.instance.scanResults,
        initialData: [],
        builder: (c, snapshot) => ListView(
          children: snapshot.data!
              .map(
                (result) => BluetoothDeviceTile(
                  device: result.device,
                  onTap: () {
                    if (_bluetoothManager.isDeviceConnected(result.device)) { // Updated method call
                      _bluetoothManager.disconnectFromDevice(result.device); // Updated method call
                    } else {
                      _bluetoothManager.connectToDevice(result.device); // Updated method call
                    }
                  },
                  isConnected: _bluetoothManager.isDeviceConnected(result.device), // Updated method call
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class BluetoothDeviceTile extends StatelessWidget {
  final BluetoothDevice device;
  final VoidCallback onTap;
  final bool isConnected;

  const BluetoothDeviceTile({
    Key? key,
    required this.device,
    required this.onTap,
    required this.isConnected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(device.name.isEmpty ? 'Unknown Device' : device.name),
      subtitle: Text(device.id.toString()),
      trailing: Icon(
        isConnected ? Icons.bluetooth_connected : Icons.bluetooth_disabled,
        color: isConnected ? Colors.green : null,
      ),
      onTap: onTap,
    );
  }
}