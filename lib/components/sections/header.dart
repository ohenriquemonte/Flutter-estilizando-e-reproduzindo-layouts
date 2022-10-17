import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: const [
              Text('\$'),
              Text('Balanço disponível'),
            ],
          ),
          const Icon(Icons.account_circle),
        ],
      ),
    );
  }
}
