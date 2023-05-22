import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppTitle extends StatelessWidget {
  const WidgetAppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final mpSize = MediaQuery.of(context).size.width;
    return Stack(
      //alignment: AlignmentDirectional.centerStart,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Image.asset(
            'assets/image/image1.png',
            height: 300,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          width: mpSize * 0.6,
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Ремонт стиральных машин с гарантией в Санкт-Петербурге',
                softWrap: true,
                textAlign: TextAlign.center,
                style: AppTextStyle.heading2,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Позвонить',
                    style: AppTextStyle.heading3,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
