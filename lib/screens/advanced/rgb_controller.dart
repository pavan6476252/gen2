import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class RGBControllerPage extends StatefulWidget {
  @override
  _RGBControllerPageState createState() => _RGBControllerPageState();
}

class _RGBControllerPageState extends State<RGBControllerPage> {
  Color currentColor = Colors.black;
  int redValue = 0;
  int greenValue = 0;
  int blueValue = 0;

  void changeColor(Color color) {
    setState(() {
      currentColor = color;
      redValue = color.red;
      greenValue = color.green;
      blueValue = color.blue;
    });
    // TODO: Send RGB values to IoT device
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          Column(
            children: [
              Center(
                child: CircleAvatar(
                    backgroundColor: currentColor,
                    radius: 40,
                  ),
                  
              ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Select a color'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: currentColor,
                              onColorChanged: changeColor,
                             
                              pickerAreaHeightPercent: 0.8,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Select a color'),
                ),
            ],
          ),
        Column(
             
              children: [
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Red'),
                    Slider(
                      value: redValue.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          redValue = value.toInt();
                          currentColor = Color.fromRGBO(redValue, greenValue, blueValue, 1);
                        });
                        // TODO: Send RGB values to IoT device
                      },
                    ),
                    Text(redValue.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Green'),
                    Slider(
                      value: greenValue.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          greenValue = value.toInt();
                          currentColor = Color.fromRGBO(redValue, greenValue, blueValue, 1);
                        });
                        // TODO: Send RGB values to IoT device
                      },
                    ),
                    Text(greenValue.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text('Blue'),
                    Slider(
                      value: blueValue.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (double value) {
                        setState(() {
                          blueValue = value.toInt();
                          currentColor = Color.fromRGBO(redValue, greenValue, blueValue, 1);
                        });
                        // TODO: Send RGB values to IoT device
                      },
                    ),
                    Text(blueValue.toString()),
                  ],
                ),
              
              ],
          
          
        ),
      ],
    );
  }
}
