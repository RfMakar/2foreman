import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:foreman/widgets/button_call.dart';

class WidgetAppContacts extends StatelessWidget {
  const WidgetAppContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Контакты', style: AppTextStyle.heading2),
        const SizedBox(height: 40),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/image/image3.png',
                height: 350,
              ),
            ),
            appText('г.Санкт-Петербург'),
            Text(
              'Работаем во всех районах',
              style: AppTextStyle.heading4,
            ),
          ],
        ),
      ],
    );
  }

  Widget appText(String name) {
    return Text(name, style: AppTextStyle.heading);
  }
}
