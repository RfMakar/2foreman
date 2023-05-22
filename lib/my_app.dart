import 'package:flutter/material.dart';
import 'package:foreman/style/style_app.dart';
import 'package:foreman/widgets/app_ap_bar.dart';
import 'package:foreman/widgets/app_application.dart';
import 'package:foreman/widgets/app_contacts.dart';
import 'package:foreman/widgets/app_lozung.dart';
import 'package:foreman/widgets/app_mastera.dart';
import 'package:foreman/widgets/app_title.dart';
import 'package:foreman/widgets/app_uslugi.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColor.color,
        ),
      ),
      home: const HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ListView(
      padding: size < 1170
          ? const EdgeInsets.all(8)
          : EdgeInsets.fromLTRB(size * 0.2, 0, size * 0.2, 0),
      children: const [
        WidgetAppApBar(),
        WidgetAppTitle(),
        SizedBox(height: 40),
        WidgetAppLozung(),
        SizedBox(height: 40),
        WidgetAppUslugi(),
        SizedBox(height: 40),
        WidgetAppMastera(),
        SizedBox(height: 40),
        WidgetAppContacts(),
        SizedBox(height: 40),
        WidgetAppApplication()
      ],
    ));
  }
}
