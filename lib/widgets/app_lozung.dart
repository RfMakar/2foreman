import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppLozung extends StatelessWidget {
  const WidgetAppLozung({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        rowTable('assets/icon/1.png', 'Бесплатная диагностика'),
        const Divider(),
        rowTable('assets/icon/2.png', 'Доступные цены'),
        const Divider(),
        rowTable('assets/icon/3.png', 'Качественный ремонт'),
        const Divider(),
        rowTable('assets/icon/4.png', 'Гарантия 6 месяцев'),
      ],
    );
  }

  Widget rowTable(String path, String name) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(path, width: 70, height: 70),
        ),
        const SizedBox(width: 12),
        Text(
          name,
          style: AppTextStyle.heading3,
        ),
      ],
    );
  }
}
