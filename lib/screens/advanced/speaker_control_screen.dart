import 'package:flutter/material.dart';

class SpeakerControlScreen extends StatefulWidget {
  const SpeakerControlScreen({Key? key}) : super(key: key);

  @override
  _SpeakerControlScreenState createState() => _SpeakerControlScreenState();
}

class _SpeakerControlScreenState extends State<SpeakerControlScreen> {
  String _selectedConnection = 'Bluetooth';
  double _volume = 50;
  bool _mute = false;

  void _onConnectionChanged(String connection) {
    setState(() {
      _selectedConnection = connection;
    });
  }

  void _onVolumeChanged(double volume) {
    setState(() {
      _volume = volume;
    });
    // Send volume update to the selected IoT device
  }

  void _onMute() {
    setState(() {
      _mute = !_mute;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Select Connection',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 8),
         
          // const SizedBox(height: 16),
          // const Text(
          //   'Volume',
          //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          // ),
          Slider(
            value: _volume,
            onChanged: _onVolumeChanged,
            min: 0,
            max: 100,
          ),
          // const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  _onMute();
                },
                child: Row(
                  children: [
                    _mute ? Icon(Icons.volume_up_outlined) : Icon(Icons.volume_off),
                    const Text('Mute'),
                  ],
                ),
              ),
               DropdownButton<String>(
            value: _selectedConnection,
            onChanged: (value) => _onConnectionChanged,
            items: const [
              DropdownMenuItem(child: Text('Bluetooth'), value: 'Bluetooth'),
              DropdownMenuItem(child: Text('WiFi'), value: 'WiFi'),
              DropdownMenuItem(child: Text('Network'), value: 'Network'),
              DropdownMenuItem(child: Text('AUX'), value: 'AUX'),
            ],
          ),

            ],
          ),
        ],
      ),
    );
  }
}
