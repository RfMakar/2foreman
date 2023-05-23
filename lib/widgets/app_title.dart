import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:foreman/widgets/button_call.dart';

class WidgetAppTitle extends StatelessWidget {
  const WidgetAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final mpSize = MediaQuery.of(context).size.width;

    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              'assets/image/image1.png',
              height: mpSize > 800 ? 580 : 320,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(
            width: mpSize > 1100 ? (mpSize - mpSize * 0.2) * 0.4 : mpSize * 0.6,
            height: mpSize > 800 ? 480 : 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Ремонт стиральных машин с гарантией в Санкт-Петербурге',
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.heading2,
                ),
                const ButtonCall(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
