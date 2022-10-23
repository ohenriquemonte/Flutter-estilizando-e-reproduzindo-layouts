import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/components/box_card.dart';
import 'package:flutter_estilizando_layouts_alr/components/color_dot.dart';
import 'package:flutter_estilizando_layouts_alr/components/sections/header.dart';
import 'package:flutter_estilizando_layouts_alr/themes/theme_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          BoxCard(
            boxContent: ColorDot(color: ThemeColors.recentActivity['income']),
          ),
        ],
      ),
    );
  }
}
