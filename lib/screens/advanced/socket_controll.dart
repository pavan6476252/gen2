import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

class SocketControlScreen extends StatefulWidget {
  final String apiUrl;
  final String socketId;

  SocketControlScreen({required this.apiUrl, required this.socketId});

  @override
  _SocketControlScreenState createState() => _SocketControlScreenState();
}

class _SocketControlScreenState extends State<SocketControlScreen> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: Image.asset('assets/socket.png'),
        title: const Text(
          'Switch Status:',
          style: TextStyle(fontSize: 24.0),
        ),
        trailing: Switch(
          value: _isOn,
          onChanged: (value) async => {await _toggleSocket()},
        ),
      ),
    );
  }

  Future<void> _toggleSocket() async {
    setState(() {
      _isOn = !_isOn;
    });

    // final response = await http.post(
    //   Uri.parse('${widget.apiUrl}/sockets/${widget.socketId}/toggle'),
    //   headers: <String, String>{
    //     'Content-Type': 'application/json; charset=UTF-8',
    //   },
    //   body: '{"isOn": $_isOn}',
    // );

    // if (response.statusCode != 200) {
    //   // handle error
    //   print('Error toggling socket: ${response.body}');
    // }
  }
}
