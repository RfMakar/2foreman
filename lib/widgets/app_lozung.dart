import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppLozung extends StatelessWidget {
  const WidgetAppLozung({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            widgetText('Бесплатная\nдиагностика', 'assets/icon/1.png'),
            widgetText('Доступные\nцены', 'assets/icon/2.png'),
          ],
        ),
        TableRow(
          children: [
            widgetText('Качественный\nремонт', 'assets/icon/3.png'),
            widgetText('Гарантия\n6 месяцев', 'assets/icon/4.png'),
          ],
        ),
      ],
    );
  }

  Widget widgetText(String name, String path) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            path,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(name, style: AppTextStyle.heading4),
        ],
      ),
    );
  }
}


/*
class WidgetAppLozung extends StatelessWidget {
  const WidgetAppLozung({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text('Почему именно мы?', style: AppTextStyle.heading2),
        Card(
          color: AppColor.color,
          elevation: 4,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/image/image2.png'),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    widgetText('Бесплатная диагностика'),
                    widgetText('Доступные цены'),
                    widgetText('Качественный ремонт'),
                    widgetText('Гарантия 6 месяцев'),
                    widgetText('Опытные мастера'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget widgetText(String name) {
    return Text(name, style: AppTextStyle.heading4);
  }
}

*/