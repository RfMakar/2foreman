import 'package:flutter/material.dart';
import 'package:foreman/model/usluga.dart';
import 'package:foreman/style/style_app.dart';
import 'package:foreman/widgets/button_call.dart';

class WidgetAppUslugi extends StatelessWidget {
  const WidgetAppUslugi({super.key});

  @override
  Widget build(BuildContext context) {
    final listUslu = <Usluga>[
      Usluga(
        0,
        'assets/uslugi/1.png',
        'Не вращает барабан',
        [
          'неисправность двигателя',
          'неисправность блока управления ',
          'заклинили подшипники ',
          'износ щеток электродвигателя ',
        ],
        [
          'замена двигателя 1500',
          'ремонт от 2000',
          'ремонт от 2000',
          'замена щеток 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/2.png',
        'Не набирает воду',
        [
          'плохой напор воды, закрыт кран подачи воды',
          'неисправность заливного клапана',
          'забился фильтр сеточка наливного ',
          'неисправность блока управления ',
        ],
        [
          'проверьте отрытое положение крана',
          'замена клапана 1500',
          'чистка фильтра 1000',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/3.png',
        'Не сливает воду',
        [
          'неисправность сливного насоса',
          'засор сливного фильтра ',
          'засор сливного шланга',
          'неисправность блока управления ',
        ],
        [
          'замена насоса 1500',
          'чистка фильтра 1000',
          'чистка шланга 1000',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/4.png',
        'Сильно шумит',
        [
          'неисправны амортизаторы',
          'износ подшипников',
          'стиральная машина не правильно установлена ',
          'повреждение крестовины бака',
        ],
        [
          'замена амортизаторов 1500',
          'ремонт от 2000',
          'установка по уровню 1500',
          'замена крестовины от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/5.png',
        'Не греет воду',
        [
          'неисправность нагревательного элемента',
          'неисправность датчика температуры',
          'неисправность блока управления ',
          'неисправность проводки от блока управления',
        ],
        [
          'замена 1500',
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/6.png',
        'Не открывается люк',
        [
          'сломана ручка люка ',
          'неисправность замка',
          'неисправность блока управления ',
          'неисправность проводки от блока управления',
        ],
        [
          'замена 1500',
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/7.png',
        'Не отжимает белье',
        [
          'режим отжима отключен',
          'неисправность двигателя',
          'неисправность блока управления',
          'износ щеток электродвигателя ',
        ],
        [
          'проверьте включенное состояние режима ',
          'замена двигателя 1500',
          'ремонт от 2000',
          'замена щеток 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/8.png',
        'Не включается',
        [
          'неисправность сетевого фильтра',
          'неисправность платы управления',
          'неисправность розетки или электропроводки',
          'неисправность кнопок управления',
        ],
        [
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/9.png',
        'Машинка протекает ',
        [
          'повреждена манжета',
          'повреждение патрубков',
          'пробой бака',
          'повреждена улитка сливного насоса ',
        ],
        [
          'замена 2000',
          'замена 1500',
          'ремонт от 2000',
          'замена 2000',
        ],
      ),
    ];
    final mpSize = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Text('Услуги', style: AppTextStyle.heading2),
        const SizedBox(height: 30),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: listUslu.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: mpSize > 800 ? 3 : 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return AppCard(
              usluga: listUslu[index],
            );
          },
        )
      ],
    );
  }
}

class AppCard extends StatelessWidget {
  const AppCard({super.key, required this.usluga});
  final Usluga usluga;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.asset(usluga.pathImage),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return SheetUsluga(usluga: usluga);
                },
              );
            },
            child: Text(
              usluga.name,
              textAlign: TextAlign.center,
              style: AppTextStyle.heading5,
            ),
          ),
        )
      ],
    );
  }
}

class SheetUsluga extends StatelessWidget {
  const SheetUsluga({super.key, required this.usluga});
  final Usluga usluga;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 60),
            Text(
              usluga.name,
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
              color: Colors.grey,
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
                  text1(usluga.malfunction[0]),
                  text1(usluga.prise[0]),
                ],
              ),
              TableRow(
                children: [
                  text1(usluga.malfunction[1]),
                  text1(usluga.prise[1]),
                ],
              ),
              TableRow(
                children: [
                  text1(usluga.malfunction[2]),
                  text1(usluga.prise[2]),
                ],
              ),
              TableRow(
                children: [
                  text1(usluga.malfunction[3]),
                  text1(usluga.prise[3]),
                ],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: ButtonCallMaster(),
        ),
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


/*
class WidgetAppUslugi extends StatelessWidget {
  const WidgetAppUslugi({super.key});

  @override
  Widget build(BuildContext context) {
    final listUslu = <Usluga>[
      Usluga(
        0,
        'assets/uslugi/1.png',
        'Не вращает барабан',
        [
          'неисправность двигателя',
          'неисправность блока управления ',
          'заклинили подшипники ',
          'износ щеток электродвигателя ',
        ],
        [
          'замена двигателя 1500',
          'ремонт от 2000',
          'ремонт от 2000',
          'замена щеток 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/2.png',
        'Не набирает воду',
        [
          'плохой напор воды, закрыт кран подачи воды',
          'неисправность заливного клапана',
          'забился фильтр сеточка наливного ',
          'неисправность блока управления ',
        ],
        [
          'проверьте отрытое положение крана',
          'замена клапана 1500',
          'чистка фильтра 1000',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/3.png',
        'Не сливает воду',
        [
          'неисправность сливного насоса',
          'засор сливного фильтра ',
          'засор сливного шланга',
          'неисправность блока управления ',
        ],
        [
          'замена насоса 1500',
          'чистка фильтра 1000',
          'чистка шланга 1000',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/4.png',
        'Сильно шумит',
        [
          'неисправны амортизаторы',
          'износ подшипников',
          'стиральная машина не правильно установлена ',
          'повреждение крестовины бака',
        ],
        [
          'замена амортизаторов 1500',
          'ремонт от 2000',
          'установка по уровню 1500',
          'замена крестовины от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/5.png',
        'Не греет воду',
        [
          'неисправность нагревательного элемента',
          'неисправность датчика температуры',
          'неисправность блока управления ',
          'неисправность проводки от блока управления',
        ],
        [
          'замена 1500',
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/6.png',
        'Не открывается люк',
        [
          'сломана ручка люка ',
          'неисправность замка',
          'неисправность блока управления ',
          'неисправность проводки от блока управления',
        ],
        [
          'замена 1500',
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/7.png',
        'Не отжимает белье',
        [
          'режим отжима отключен',
          'неисправность двигателя',
          'неисправность блока управления',
          'износ щеток электродвигателя ',
        ],
        [
          'проверьте включенное состояние режима ',
          'замена двигателя 1500',
          'ремонт от 2000',
          'замена щеток 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/8.png',
        'Не включается',
        [
          'неисправность сетевого фильтра',
          'неисправность платы управления',
          'неисправность розетки или электропроводки',
          'неисправность кнопок управления',
        ],
        [
          'замена 1500',
          'ремонт от 2000',
          'замена 1500',
          'ремонт от 2000',
        ],
      ),
      Usluga(
        0,
        'assets/uslugi/9.png',
        'Стиральна машина протекает ',
        [
          'повреждена манжета',
          'повреждение патрубков',
          'пробой бака',
          'повреждена улитка сливного насоса ',
        ],
        [
          'замена 2000',
          'замена 1500',
          'ремонт от 2000',
          'замена 2000',
        ],
      ),
    ];

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


*/