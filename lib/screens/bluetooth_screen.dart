// screens/bluetooth_screen.dart
import 'package:flutter/material.dart';
import 'package:flexform/services/bluetooth_service.dart';

class BluetoothScreen extends StatefulWidget {
  @override
  _BluetoothScreenState createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  final BluetoothService _bluetoothService = BluetoothService();

  @override
  void initState() {
    super.initState();
    // You might want to start scanning for devices here or set up some initial state.
  }

  @override
  Widget build(BuildContext context) {
    // This is where you'll build your UI for the Bluetooth screen.
    // For now, let's just have a simple Scaffold with an AppBar.
    return Scaffold(
      appBar: AppBar(
        title: Text('Bluetooth Devices'),
      ),
      body: Center(
        child: Text('Scan for Bluetooth devices here.'),
        // Eventually, you'll want to replace this with a list of devices, buttons to connect, etc.
      ),
    );
  }
}
