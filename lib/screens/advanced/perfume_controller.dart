import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PerfumeControlScreen extends StatefulWidget {
  @override
  _PerfumeControlScreenState createState() => _PerfumeControlScreenState();
}

class _PerfumeControlScreenState extends State<PerfumeControlScreen> {
  String _selectedSprayer = 'Lavender';
  double _sprayPercentage = 50.0;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Scents",style: TextStyle(fontSize: 25),),
                DropdownButton<String>(
                  value: _selectedSprayer,
                  onChanged: (value) {
                    setState(() {
                      _selectedSprayer = value??"";
                    });
                  },
                  items:const  [
                    DropdownMenuItem(
                      value: 'Lavender',
                      child: Text('Lavender'),
                    ),
                    DropdownMenuItem(
                      value: 'Rose',
                      child: Text('Rose'),
                    ),
                    DropdownMenuItem(
                      value: 'Salty',
                      child: Text('Salty'),
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 16.0),
            Slider(
              value: _sprayPercentage,
              min: 0,
              max: 100,
              divisions: 10,
              onChanged: (value) {
                setState(() {
                  _sprayPercentage = value;
                });
              },
            ),
            // SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isLoading ? null : _sendSprayCommand,
              child: Text( _isLoading ?  'Spraying...' : 'Spray ${_sprayPercentage.toInt()}%') ,
            ),
            // SizedBox(height: 16.0),
            // CircularPercentIndicator(
            //   radius: 60.0,
            //   lineWidth: 5.0,
            //   percent: _isLoading ? 0 : 1.0,
            //   center: _isLoading ? CircularProgressIndicator() : null,
            //   backgroundColor: Colors.grey,
            //   progressColor: Colors.green,
            // ),
          ],
        ),
      
    );
  }

  void _sendSprayCommand() async {
    setState(() {
      _isLoading = true;
    });

    // TODO: Send MQTT message to control the selected sprayer with the selected percentage

    await Future.delayed(Duration(seconds: 3));

    setState(() {
      _isLoading = false;
    });
  }
}
