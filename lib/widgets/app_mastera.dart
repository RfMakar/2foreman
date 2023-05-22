import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppMastera extends StatelessWidget {
  const WidgetAppMastera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('О мастерах', style: AppTextStyle.heading2),
        const SizedBox(height: 40),
        card('assets/mastera/1.png', 'Михаил', 'Ведущий сервисный инженер'),
        const Divider(),
        card('assets/mastera/2.png', 'Максим', 'Сервисный инженер'),
      ],
    );
  }

  Widget card(String path, String name, String title) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Image.asset(
            path,
            height: 220,
            width: 220,
          ),
        ),
        Text(name, style: AppTextStyle.heading3),
        Text(title, style: AppTextStyle.heading5),
      ],
    );
  }
}
