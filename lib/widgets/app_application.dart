import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppApplication extends StatelessWidget {
  const WidgetAppApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '"2 Мастера", 2023г',
          style: AppTextStyle.heading5,
        ),
      ],
    );
  }
}
