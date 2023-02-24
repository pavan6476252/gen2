import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _cards = [
    {
      'title': 'Avatar',
      'subtitle': 'The way of water',
      'isSwitched': false,
    },
    {
      'title': '4D Audiobook',
      'subtitle': '',
      'isSwitched': false,
    },
    {
      'title': 'Beach',
      'subtitle': '',
      'isSwitched': false,
    },
    {
      'title': 'Mount fuji',
      'subtitle': '',
      'isSwitched': false,
    },
    {
      'title': 'Araku',
      'subtitle': '',
      'isSwitched': false,
    },
    {
      'title': 'Audio',
      'subtitle': '',
      'isSwitched': false,
    },
  ];

  final List<Map<String, dynamic>> _other = [
    {
      'title': 'Advanced',
      'icon': Icons.developer_board_rounded,
      'route': 'advancedScreen'
    },
    {
      'title': 'Battery',
      'icon': Icons.earbuds_battery,
      'route': 'batteryScreen'
    },
    {
      'title': 'Instruction manual',
      'icon': Icons.integration_instructions_rounded,
      'route': 'instructionsScreen'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basic', style: TextStyle(fontSize: 40)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(_cards[index]['title']),
                    // subtitle: Text(_cards[index]['subtitle']),
                    trailing: Switch(
                      value: _cards[index]['isSwitched'],
                      onChanged: (value) {
                        setState(() {
                          _cards[index]['isSwitched'] = value;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _other.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () =>
                      Navigator.pushNamed(context, _other[index]['route']),
                  title: Text(_other[index]['title']),
                  leading: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      _other[index]['icon'],
                      size: 50,
                    ),
                  ),
                ),
              ),
            ),
            //dsfsd
            Card(
              child: ListTile(
                onTap: () => {
                  Fluttertoast.showToast(
                    msg: "We are in demo mode",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.black54,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  )
                },
                title: Text('Demo Mode'),
                leading: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.developer_mode_rounded,
                    size: 50,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                onTap: () => {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AboutDialog(
                        applicationName: 'Gen2 Iot',
                        children: [
                          Text(
                              "an detailed discriptive view of packages and technologies we used to develop this app")
                        ],
                        applicationVersion: '1.0.0',
                        applicationIcon: Image.asset(
                          'assets/logo.png',
                          height: 50,
                        ),
                      );
                    },
                  )
                },
                title: Text('About App'),
                leading: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    Icons.design_services_rounded,
                    size: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
