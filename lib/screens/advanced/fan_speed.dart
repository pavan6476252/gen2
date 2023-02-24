import 'package:flutter/material.dart';

class FanControlScreen extends StatefulWidget {
  @override
  _FanControlScreenState createState() => _FanControlScreenState();
}

class _FanControlScreenState extends State<FanControlScreen> {
  double _fanSpeed = 0.0;
  bool _fanState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // SizedBox(height: 16.0),
          ListTile(
            leading: Icon(Icons.wind_power_outlined,size: 40,),
            trailing: Switch(
                value: _fanState,
                onChanged: (newValue) {
                  setState(() {
                    _fanState = newValue;
                  });
                }),
            title: Text(
              'Fan Speed: ${_fanSpeed.toInt()}',
              style: TextStyle(fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
          ),
          Slider(
            value: _fanSpeed,
            onChanged: (newValue) {
              setState(() {
                _fanSpeed = newValue;
              });
            },
            min: 0.0,
            max: 100.0,
            divisions: 10,
            label: '${_fanSpeed.toInt()}',
          ),
          // SizedBox(height: 32.0),
          // Text(
          //   'Fan State: ${_fanState ? 'ON' : 'OFF'}',
          //   style: TextStyle(fontSize: 24.0),
          //   textAlign: TextAlign.center,
          // ),
          // SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
