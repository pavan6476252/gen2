import 'package:flutter/material.dart';
import 'package:gen2/screens/advanced/advanced_screen.dart';
import 'package:gen2/screens/battery_screen.dart';
import 'package:gen2/screens/home_screen.dart';
import 'package:gen2/screens/instruction_manual_screen.dart';
import 'package:gen2/screens/login_screen.dart';
import 'package:gen2/screens/sign_up_screen.dart';
import 'package:gen2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      title: 'gen2 IOT',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        'signupScreen': (context) => SignUpScreen(),
        'loginScreen': (context) => LoginScreen(),
        'homeScreen': (context) => HomeScreen(),
        'advancedScreen' :(context) =>const  AdvancedScreen(),
        'instructionsScreen' :(context) =>const  InstructionManualScreen(),
        'batteryScreen' :(context) =>  DeviceStatusScreen(batteryLevel: 44,deviceName: 'Gen2',performanceLevel: 98,)
      },
    );
  }
}
