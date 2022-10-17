import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/components/sections/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Header(),
    );
  }
}
