//mahin islam
// Assignment - 2

import 'package:flutter/material.dart';
import 'apps.dart';
import 'app_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Device> devices = [
    Device("Air Condition", Icons.ac_unit),
    Device("Computer", Icons.computer),
    Device("Desktop Computer", Icons.desktop_windows),
    Device("Digital watch", Icons.access_alarm),
    Device("Iron Machine", Icons.iron),
    Device("Television", Icons.tv),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mahin - IoT Home App"),
        ),
        body: Container(
          color: Colors.grey[100],
          padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: GridView.count(
            childAspectRatio: (140 / 100),
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: devices.map((device) {
              return DeviceContainer(device);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
