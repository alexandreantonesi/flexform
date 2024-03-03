// main.dart
import 'package:flutter/material.dart';
import 'package:flexform/screens/exercises_screen.dart';
import 'package:flexform/screens/user_setup_screen.dart';
import 'package:flexform/models/selection_data.dart';
import 'package:flexform/screens/bluetooth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('pt_PT', null);

  final prefs = await SharedPreferences.getInstance();
  final setupCompleted = prefs.getBool('setupCompleted') ?? false;

  final userPreferences = SelectionData(
    daysAvailable: prefs.getInt('daysAvailable'),
    hoursAvailable: prefs.getInt('hoursAvailable'),
    mainGoal: prefs.getString('mainGoal'),
    age: prefs.getInt('age'),
    experienceLevel: prefs.getString('experienceLevel'),
    name: prefs.getString('name'),
  );

  runApp(MyApp(setupCompleted: setupCompleted, userPreferences: userPreferences));
}

class MyApp extends StatefulWidget {
  final bool setupCompleted;
  final SelectionData userPreferences;

  const MyApp({Key? key, required this.setupCompleted, required this.userPreferences}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [];

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      ExercisesScreen(userPreferences: widget.userPreferences),
      BluetoothScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.setupCompleted) {
      return MaterialApp(
        home: UserSetupScreen(),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Exercises',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bluetooth),
              label: 'Bluetooth',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}