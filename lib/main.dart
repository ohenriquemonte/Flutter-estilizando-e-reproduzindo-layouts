import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/screens/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const Alubank(), // Wrap your app
    ),
  );
}

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      builder: DevicePreview.appBuilder, // Add the builder here
    );
  }
}
