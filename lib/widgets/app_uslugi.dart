import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:foreman/widgets/button_call.dart';

class WidgetAppUslugi extends StatelessWidget {
  const WidgetAppUslugi({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Услуги', style: AppTextStyle.heading2),
        const SizedBox(height: 40),
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
            child: Image.asset(path, fit: BoxFit.fill),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return const SheetUsluga();
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

class SheetUsluga extends StatelessWidget {
  const SheetUsluga({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 60),
            Text(
              'Не вращает барабан',
              style: AppTextStyle.heading3,
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(
              color: AppColor.color,
              width: 1,
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            children: [
              TableRow(
                decoration: const BoxDecoration(color: AppColor.color),
                children: [
                  text('Возможные причины неисправности:'),
                  text('Стоимость услуги:'),
                ],
              ),
              TableRow(
                children: [
                  text1('неисправность двигателя'),
                  text1('замена двигателя 1500'),
                ],
              ),
              TableRow(
                children: [
                  text1('неисправность блока управления'),
                  text1('ремонт от 2000'),
                ],
              ),
              TableRow(
                children: [
                  text1('заклинили подшипники'),
                  text1('ремонт от 2000'),
                ],
              ),
              TableRow(
                children: [
                  text1('износ щеток электродвигателя'),
                  text1('замена щеток 2000'),
                ],
              ),
            ],
          ),
        ),
        const ButtonCallMaster(),
      ],
    );
  }

  Widget text(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
        fontStyle: FontStyle.italic,
        //fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget text1(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
