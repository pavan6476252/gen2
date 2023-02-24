import 'package:flutter/material.dart';

class AboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16.0),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.lightbulb_outline,
            size: 48.0,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(height: 16.0),
          Text(
            'IoT Perfume Controller',
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            'Version 1.0.0',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 16.0),
          Text(
            'The IoT Perfume Controller app lets you control the perfume sprayers in your home with ease. Simply select the sprayer and the spray percentage, and the app will do the rest.',
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
