import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';

class WidgetAppUslugi extends StatelessWidget {
  const WidgetAppUslugi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Услуги', style: AppTextStyle.heading2),
        Table(
          children: [
            const TableRow(
              children: [
                AppCard(
                  path: 'assets/uslugi/1.png',
                  title: 'Не вращает барабан',
                ),
                AppCard(
                  path: 'assets/uslugi/2.png',
                  title: 'Не набирает воду',
                ),
              ],
            ),
            const TableRow(
              children: [
                AppCard(
                  path: 'assets/uslugi/3.png',
                  title: 'Не сливает воду',
                ),
                AppCard(
                  path: 'assets/uslugi/4.png',
                  title: 'Сильно шумит',
                ),
              ],
            ),
            const TableRow(
              children: [
                AppCard(
                  path: 'assets/uslugi/5.png',
                  title: 'Не греет воду',
                ),
                AppCard(
                  path: 'assets/uslugi/6.png',
                  title: 'Не открывает люк',
                ),
              ],
            ),
            const TableRow(children: [
              AppCard(
                path: 'assets/uslugi/7.png',
                title: 'Не отжимает белье',
              ),
              AppCard(
                path: 'assets/uslugi/8.png',
                title: 'Не включается',
              ),
            ]),
            TableRow(
              children: [
                const AppCard(
                  path: 'assets/uslugi/9.png',
                  title: 'Протекает',
                ),
                Container(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.path, required this.title});
  final String path, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              path,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    child: Center(child: Text("Тут будет описнаие услуг")),
                  );
                },
              );
            },
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.heading5,
            ),
          )
        ],
      ),
    );
  }
}
