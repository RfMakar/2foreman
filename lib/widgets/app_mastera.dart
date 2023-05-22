import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppMastera extends StatelessWidget {
  const WidgetAppMastera({super.key});

  @override
  Widget build(BuildContext context) {
    final mpSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text('О мастерах', style: AppTextStyle.heading2),
        const SizedBox(height: 30),
        mpSize > 800 ? widgetWeb() : widgetMobile(),
      ],
    );
  }

  Widget widgetMobile() {
    return Column(
      children: [
        card('assets/mastera/1.png', 'Михаил', 'Ведущий сервисный инженер'),
        const Divider(),
        card('assets/mastera/2.png', 'Максим', 'Сервисный инженер'),
      ],
    );
  }

  Widget widgetWeb() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: card(
                'assets/mastera/1.png', 'Михаил', 'Ведущий сервисный инженер')),
        Expanded(
            child: card('assets/mastera/2.png', 'Максим', 'Сервисный инженер')),
      ],
    );
  }

  Widget card(String path, String name, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            child: Image.asset(path),
          ),
          Text(name, style: AppTextStyle.heading3),
          Text(title, style: AppTextStyle.heading5),
        ],
      ),
    );
  }
}
