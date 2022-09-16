import 'package:flutter/material.dart';
import 'package:shift_scheduler/components/shiftsListComponent.dart';

class ShiftsScreen extends StatefulWidget {
  const ShiftsScreen({Key? key}) : super(key: key);

  @override
  State<ShiftsScreen> createState() => _ShiftsScreenState();
}

class _ShiftsScreenState extends State<ShiftsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Shifts'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: ShiftsListComponent(
        items: [
          ShiftsListComponentItem("10:00-11:00", "Ernest Brzeski",
              Colors.red, true, (bool value) {}),
          ShiftsListComponentItem("11:00-12:00", "Mariusz Chechelski",
              Colors.yellow, true, (bool value) {}),
          ShiftsListComponentItem("12:00-13:00", "Free",
              Colors.green, true, (bool value) {})
        ],
      ),
    );
  }
}
