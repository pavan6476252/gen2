import 'package:flutter/material.dart';

class InstructionManualScreen extends StatelessWidget {
  const InstructionManualScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instruction Manual'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'How to Use This App:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '- Step 1: Open the app and create an account or log in if you already have one.',
              ),
              Text(
                '- Step 2: Navigate to the home screen and select the feature you want to use (e.g. "View Profile").',
              ),
              Text(
                '- Step 3: Follow the prompts on the screen to complete your desired action.',
              ),
              SizedBox(height: 20),
              Text(
                'Troubleshooting:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '- If you experience any issues, please contact our support team at support@gen2iot.com.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
