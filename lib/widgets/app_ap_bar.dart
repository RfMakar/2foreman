import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppApBar extends StatelessWidget {
  const WidgetAppApBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.color2,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('2 мастера', style: AppTextStyle.heading),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('г. Санкт-Петербург', style: AppTextStyle.heading3),
              Text(
                'c 8:00 до 23:00, без выходных',
                style: AppTextStyle.heading5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
