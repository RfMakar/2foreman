import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

import 'package:foreman/widgets/button_call.dart';

class WidgetAppTitle extends StatelessWidget {
  const WidgetAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final mpSize = MediaQuery.of(context).size.width;

    return mpSize > 800 ? widgetWeb() : widgetMobile();
  }

  Widget widgetMobile() {
    return Column(
      children: [
        const SizedBox(height: 30),
        Image.asset(
          'assets/image/image2.png',
          height: 150,
          fit: BoxFit.fitHeight,
        ),
        Text(
          'Ремонт стиральных машин\nв Санкт-Петербурге',
          textAlign: TextAlign.center,
          style: AppTextStyle.heading,
        ),
        Text(
          'c 8:00 до 23:00 без выходных',
          style: AppTextStyle.heading5,
        ),
        const SizedBox(height: 30),
        //const ButtonCall(),
        //SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/image/image1.png',
            //height: mpSize > 800 ? 580 : 300,
            fit: BoxFit.fitHeight,
          ),
        ),

        //SizedBox(height: 20),
      ],
    );
  }

  Widget widgetWeb() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/image/image2.png',
              height: 150,
              fit: BoxFit.fitHeight,
            ),
            Text(
              'Ремонт стиральных машин\nв Санкт-Петербурге',
              textAlign: TextAlign.center,
              style: AppTextStyle.heading,
            ),
            Text(
              'c 8:00 до 23:00 без выходных',
              style: AppTextStyle.heading5,
            ),
            const SizedBox(height: 30),
            const ButtonCall(),
            //SizedBox(height: 30),
          ],
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/image/image1.png',
            height: 400,
            fit: BoxFit.fitHeight,
          ),
        ),

        //SizedBox(height: 20),
      ],
    );
  }
}
