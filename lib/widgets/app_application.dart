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
        //Text('Оставить заявку', style: AppTextStyle.heading2),
        // Card(
        //   child: Column(
        //     children: [
        //       textField('Имя'),
        //       textField('Телефон'),
        //       TextButton(
        //         onPressed: () {},
        //         child: Text(
        //           'Перезвонить мне',
        //           style: AppTextStyle.heading3,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }

  Widget textField(String text) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextField(
        style: AppTextStyle.heading4,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            hintText: text,
            isDense: true,
            contentPadding: const EdgeInsets.all(6),
            fillColor: AppColor.color2,
            filled: true),
      ),
    );
  }
}
