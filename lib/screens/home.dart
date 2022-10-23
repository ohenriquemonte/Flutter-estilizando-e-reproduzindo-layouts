import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/components/sections/account_actions.dart';
import 'package:flutter_estilizando_layouts_alr/components/sections/header.dart';
import 'package:flutter_estilizando_layouts_alr/components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Header(),
          RecentActivity(),
          AccountActions(),
        ],
      ),
    );
  }
}
