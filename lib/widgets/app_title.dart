import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppTitle extends StatelessWidget {
  const WidgetAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final mpSize = MediaQuery.of(context).size.width;
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Image.asset(
          'assets/image/image1.png',
          fit: BoxFit.fitHeight,
        ),
        SizedBox(
          width: mpSize * 0.5,
          child: Column(
            children: [
              Text(
                'Ремонт стиральных\nмашин с гарантией\nв Санкт-Петербурге',
                textAlign: TextAlign.center,
                style: AppTextStyle.heading3,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Позвонить',
                  style: AppTextStyle.heading3,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
