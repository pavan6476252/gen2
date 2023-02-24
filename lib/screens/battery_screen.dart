import 'package:flutter/material.dart';

class DeviceStatusScreen extends StatelessWidget {
  final String deviceName;
  final double batteryLevel;
  final double performanceLevel;

  DeviceStatusScreen(
      {required this.deviceName,
      required this.batteryLevel,
      required this.performanceLevel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('battery and Device Status'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Device name: $deviceName',
              style: const TextStyle(
                  fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Battery Level: ${batteryLevel.toStringAsFixed(2)}%',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Performance Level: ${performanceLevel.toStringAsFixed(2)}%',
              style: const TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
