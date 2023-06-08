import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:url_launcher/url_launcher.dart';

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
            IconButton(
              onPressed: () async {
                final call = Uri.parse('https://t.me/+79219140899');
                if (await canLaunchUrl(call)) {
                  launchUrl(
                    call,
                  );
                } else {
                  throw 'Could not launch $call';
                }
              },
              icon: Icon(
                Icons.telegram,
                color: Colors.blue,
                size: 60,
              ),
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
