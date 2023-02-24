import 'package:flutter/material.dart';
import 'package:gen2/screens/advanced/perfume_controller.dart';
import 'package:gen2/screens/advanced/rgb_controller.dart';
import 'package:gen2/screens/advanced/socket_controll.dart';
import 'package:gen2/screens/advanced/speaker_control_screen.dart';

import 'fan_speed.dart';

class AdvancedScreen extends StatelessWidget {
  const AdvancedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Advanced",
        style: TextStyle(fontSize: 25),
      )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Divider(),
                RGBControllerPage(),
                const Divider(),
                FanControlScreen(),
                const Divider(),
                SpeakerControlScreen(),
                const Divider(),
                SocketControlScreen(apiUrl: '',socketId: ''),
                const Divider(),
                PerfumeControlScreen(),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
