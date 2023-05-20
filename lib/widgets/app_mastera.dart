import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppMastera extends StatelessWidget {
  const WidgetAppMastera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('О мастерах', style: AppTextStyle.heading2),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomLeft: Radius.circular(80),
                ),
                child: Image.asset('assets/mastera/1.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  appText('Михаил'),
                  appText2('Ведущий сервисный инженер'),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  appText('Максим'),
                  appText2('Сервисный инженер'),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.asset('assets/mastera/2.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget appText2(String name) {
    return Text(name, style: AppTextStyle.heading4);
  }

  Widget appText(String name) {
    return Text(name, style: AppTextStyle.heading2);
  }
}
