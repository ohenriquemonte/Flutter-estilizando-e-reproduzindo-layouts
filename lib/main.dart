import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/screens/home.dart';
import 'package:flutter_estilizando_layouts_alr/themes/my_theme.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const Alubank(),
    ),
  );
}

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alubank',
      theme: MyTheme,
      home: const Home(),
      builder: DevicePreview.appBuilder,
    );
  }
}
