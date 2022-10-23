import 'package:flutter/material.dart';
import 'package:flutter_estilizando_layouts_alr/components/box_card.dart';
import 'package:flutter_estilizando_layouts_alr/components/color_dot.dart';
import 'package:flutter_estilizando_layouts_alr/components/content_division.dart';
import 'package:flutter_estilizando_layouts_alr/themes/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saída'),
                    Text('\$ 9900.97', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['income']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Entrada'),
                    Text('\$ 9332.35', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                )
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Limite de Gastos: \$432.90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: ThemeColors.recentActivity['limit'],
          ),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(padding: EdgeInsets.only(top: 8, bottom: 8), child: ContentDivision()),
        const Text('Esse mês você gastou \$1500.00 com jogos. Tente baixar esse custo!'),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Diga-me como!',
            style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}
