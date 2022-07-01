## IP Geolocation Api Package

Un paquete Dart para obtener la geolocalizacion y datos de tu IP

## Uso

```dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ip_geolocation_api/ip_geolocation_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IP Geolocation Api ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = '';
  GeolocationData? geolocationData;

  @override
  void initState() {
    super.initState();
    getIp();
  }

  Future<void> getIp() async {
    geolocationData = await GelocationApi.getData();
    if (geolocationData != null) {
      setState(() {
        text = geolocationData?.ip ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Center(
              child: Text(text),
            ),
          ),
          TextButton(
            onPressed: () {
              if (geolocationData != null) {
                setState(() {
                  text = jsonEncode(geolocationData!.toJson());
                });
              }
            },
            child: const Text('toJSON'),
          ),
        ],
      ),
    );
  }
}

```
